class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    @post = Post.create(title: "My post title")
    redirect_to "/posts/#{@post.id}"
  end

  # private
  #
  # def post_params
  #   params.require(:post).permit(:title, :description)
  # end
end
