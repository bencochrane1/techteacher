class ShowVideosController < ApplicationController
    before_action :authenticate_user!
    
  def index
    @videos = Video.where(user: current_user).order("created_at DESC")
  end

  def edit
  end

  def show
  end
end
