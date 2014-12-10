class Category < ActiveRecord::Base
    has_many :categoryvideos
    has_many :videos, through: :categoryvideos
end
