class PostsController < ApplicationController
  # edit the behavior of our controller
  before_action :set_post, only: [:update, :edit, :show, :destroy]
  skip_before_action :verify_authenticity_token
  def index
    session[:user_id] = { username:"Pape", id: 3}
    @posts = Post.all
  end
  def show

  end
  def edit

  end

  def create
    post = Post.create(post_params)
    redirect_to post_path(post.id)
  end


  def update
    @post.update(post_params)
    flash[:notice]="Article modifié avec succès"
    redirect_to posts_path
  end
  def new
    @post = Post.new
  end
  def destroy

    @post.destroy
    redirect_to posts_path
  end


  private
  def post_params
    post_params = params.require(:post).permit(:name, :content)
  end
  def set_post
    @post = Post.find(params[:id])
  end
end
