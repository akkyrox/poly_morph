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
    debugger
  end
end
