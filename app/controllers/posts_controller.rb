class PostsController < ApplicationController
  before_filter :authenticate_user!

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to user_post_path(current_user, @post)
    end
  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  private
    def post_params
      params.require(:post).permit(:title, :content)
    end
end
