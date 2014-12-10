class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit] 

  def index
    if params[:category]
      @category = Category.find params[:category]
      @videos = @category.videos.all 
    else 
      @videos = Video.all
    end
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
    params.require(:video).permit(:title, :description, :author, :author_url, :youtube_url, :youtube_id, :category_ids => [])
  end

  def set_video
    @video = Video.find(params[:id])
  end

end