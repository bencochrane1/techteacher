class Video < ActiveRecord::Base

    before_save :embed


  def embed
    if youtube_url.include?("embed/") && youtube_url.include?("iframe")
        self.youtube_id = youtube_url.split("embed/").last.split(" ").first.delete('"')
    elsif youtube_url.include?("watch?v=") && youtube_url.include?("list=")
        self.youtube_id = youtube_url.split("watch?v=").last.split("&list").first
    elsif youtube_url.include?("watch?v=") && youtube_url.length < 50
        self.youtube_id = youtube_url.split("=").last
    elsif youtube_url.include?("http://youtu.be/")
        self.youtube_id = youtube_url.split("e/").last
    end
  end


  # def soundcloud_me
  #   client = SoundCloud.new(client_id: "b7dddad74306e14915722c45698601c1")
  #   track = client.get('/resolve', url: self.url)
  #   self.soundcloud_id = track.id
  # end


end