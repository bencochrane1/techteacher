class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit]


  def index
    @videos = Video.all
  end

  def new
    @video = Video.create
  end

  def edit
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
  end

  def new
    @video = Video.new
  end


  private

  def video_params
    params.require(:video).permit(:title, :description, :category, :author, :author_url, :youtube_url, :youtube_id)
  end

  def set_video
    @video = Video.find(params[:id])
  end

end