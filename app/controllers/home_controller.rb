class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.group = params[:post][:group]
    @post.code = params[:post][:code]
    @post.fromday = params[:post][:fromday]
    @post.content = params[:post][:content]
    @post.minute = params[:post][:minute]
    @post.img_url = params[:post][:image]
    @post.img_url2 = params[:post][:image2]
    @post.img_url3 = params[:post][:image3]
    @post.save
    
    redirect_to '/home/index'
  end
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    redirect_to '/home/index'
    
  end
  def show
    @post = Post.find(params[:post_id])
  end
  def showegg
    @post = Post.find(params[:post_id])
  end
  def join
  end
  def showjoin
    @posts = Post.where(code: params[:code])
  end
end
