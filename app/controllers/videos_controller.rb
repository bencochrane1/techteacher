class VideosController < ApplicationController
  before_action :set_video, only: [:show]


  def index
    @videos = Video.all
  end

  def new
    @video = Video.create
  end

  def edit
    @video = Video.find params[:id]
  end

  def create
    @video = Video.new video_params

    if @video.save
        redirect_to @video
    else
        render :new
    end

  end

  def show
    @video = Video.find params[:id]
  end

  def new
    @video = Video.new
  end


  private

  def video_params
    params.require(:video).permit(:title, :description, :category, :author, :author_url, :youtube_url)
  end

  def set_video
    @video = Video.find(params[:id])
  end

end