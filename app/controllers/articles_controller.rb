class ArticlesController < ApplicationController

  def index
    @articles =Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(params[:article])
  end

end