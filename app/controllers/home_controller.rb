class HomeController < ApplicationController
  def new
  end
  def create
    @post = Post.new
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    redirect_to "/posts/show/#{@post.id}"
  end
  def index
    @posts = Post.all

  end
  def edit
    @post = Post.find(params[:post_id])
  end
  def update
    @post = Post.find(params[:post_id])
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    redirect_to "/posts/show/#{@post.id}"
  end
  def show
    @post = Post.find(params[:post_id])
    @comments = Comment.where(:post_id => params[:post_id])
  end
  def destroy
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to '/'
  end
end
