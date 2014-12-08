class VideosController < ApplicationController  

  def index
    @videos = Video.all
  end

  def new
    @video = Video.create
  end

  def edit
    @video = Video.find params[:id]
  end

  def show
    @video = Video.find params[:id]
  end

  private 
  def video_params
      params.require(:video).permit(:title, 
                                    :description, 
                                    :category,
                                    :author_url,
                                    :author, 
                                    :youtube_url)
    end

end