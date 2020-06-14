class PostsController < ApplicationController
  def index
    @user = current_user
    @posts = Post.all
  end
  
  def new
    @user = current_user
    @post = Post.new
  end
  
  def show
    @post = Post.find(params[:id])
    @user = @post.user
  end
  
  def create
    @post = current_user.posts.build(post_params)
    @user = current_user
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end
  
  private

    def post_params
      params.require(:post).permit(:name, :content, :picture, :title)
    end
  
  
end


