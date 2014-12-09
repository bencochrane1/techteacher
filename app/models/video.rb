class Video < ActiveRecord::Base

    before_save :embed

    # def self.url_transform(youtube_url)
    #     if youtube_url.length <= 28
    #         youtube_url.gsub(/^https:\/\/www.youtube.com\/watch\?v=/,'')            
    #     end

    # end

  def embed
    if youtube_url.include?("=")
        self.youtube_id = youtube_url.split("=").last
    elsif youtube_url.include?("http://youtu.be/")
        self.youtube_id = youtube_url.split("e/").last
    else youtube_url.include?("embed/")
        self.youtube_id = youtube_url.split("embed/").last.split(' ').first.split('"')
    end
  end


  # def soundcloud_me
  #   client = SoundCloud.new(client_id: "b7dddad74306e14915722c45698601c1")
  #   track = client.get('/resolve', url: self.url)
  #   self.soundcloud_id = track.id
  # end


end