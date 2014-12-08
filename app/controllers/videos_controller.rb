class VideosController < ApplicationController
  
  def index
    @videos = Video.all
  end

  def edit
  end

  def show
  end
end

