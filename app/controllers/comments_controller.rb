class CommentsController < ApplicationController

  def index
    @commentable = comments_for_object
    @comments = @commentable.comments
  end

  def comments_for_object
    params.each do |k,v|
      if k =~ /(.+)_id$/
        return $1.classify.constantize.find(v)
      end
    end
  end

  def create
    params[:comment_parent].each {|key,value| @commentable = key.constantize.find(value)}
    debugger
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      redirect_to :back
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
