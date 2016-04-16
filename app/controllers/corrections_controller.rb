class CorrectionsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @correction = Correction.new
    @correction.post = @post
    respond_with(@correction)
  end

  def create
    @post = Post.find(params[:post_id])
    @correction = Correction.new connection_params
    @correction.post = @post
    @correction.post_id = @post.id
    @correction.correcter_id = current_user.id
    if @correction.save
      redirect_to user_post_path(@post.user_id, @correction.post_id)
    end
  end


  def connection_params
    params.require(:correction).permit(:orig_text, :new_text)
  end
end
