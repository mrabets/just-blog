class PostsController < ApplicationController
  def index
    @posts = current_user.posts.all
  end

  def show
    @post = current_user.posts.find params[:id]
  end

  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new post_params

    if @post.save
      flash[:success] = 'Your post has successfully added'
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @post = current_user.posts.find params[:id]
  end

  def update
    @post = current_user.posts.find params[:id]

    if @post.update post_params
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    current_user.posts.find(params[:id]).destroy
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
