class PostsController < ApplicationController

  def index
    @post = Posts.all.order(created_at: :desc)

  def new
  end

  def show
    @post = Posts.find(params[:id])
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
