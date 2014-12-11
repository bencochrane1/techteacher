class Video < ActiveRecord::Base

    before_save :embed

    has_many :categoryvideos
    has_many :categories, through: :categoryvideos

    belongs_to :user

    validates :title, :description, :youtube_url, :author, :author_url, presence: true

    def embed
      if youtube_url.include?("embed/") && youtube_url.include?("iframe")
          self.youtube_id = youtube_url.split("embed/").last.split(" ").first.delete('"')
      elsif youtube_url.include?("watch?v=")
          self.youtube_id = youtube_url.split("watch?v=").last[0..10]
      elsif youtube_url.include?("http://youtu.be/")
          self.youtube_id = youtube_url.split("e/").last
      end
    end


end