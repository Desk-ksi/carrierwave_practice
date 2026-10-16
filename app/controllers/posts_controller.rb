class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    binding.break
    if @post.save
      redirect_to posts_path
    end
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, {images: []})
  end
end
