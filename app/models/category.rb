class Category < ActiveRecord::Base
    has_many :categoryvideos
    has_many :videos, through: :categoryvideos

    validates :name, presence: true
    validates_presence_of :image, :content_type => /\Aimage\/.*\Z/

    mount_uploader :image, ImageUploader

end
