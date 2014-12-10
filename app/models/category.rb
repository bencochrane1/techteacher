class Category < ActiveRecord::Base
    has_many :categoryvideos
    has_many :videos, through: :categoryvideos


    mount_uploader :image, ImageUploader
    # has_attached_file :image, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "noimage.png"

end
