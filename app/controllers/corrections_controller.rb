class CorrectionsController < ApplicationController

  def new
    @correction = Correction.new
  end

  def create
    @correction = Correction.new
    if @correction.save
      redirect_to user_post_path(current_user, @correction.post_id)
    end
  end
end
