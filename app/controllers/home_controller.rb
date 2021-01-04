class HomeController < ApplicationController
  def index
    @posts = Post.all
  end
  def write
  end
  def create
    post = Post.new
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to '/index'
  end
  def modify
    @post = Post.find(params[:id])
  end
  def delete
    post = Post.destroy(params[:id])
    redirect_back fallback_location: '/index'
  end
  def update
    post = Post.find(params[:id])
    post.title = params[:title]
    post.content = params[:content]
    post.save

    redirect_to '/index'
  end
end
