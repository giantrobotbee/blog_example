class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])

    if @post.save
      flash[:success] = "Post successfully created"
      redirect_to @post
    end
  end

  def show
    @post = Post.find(params[:id])
  end
end
