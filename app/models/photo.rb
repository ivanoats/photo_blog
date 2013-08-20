class Photo < ActiveRecord::Base
  attr_accessible :title, :image
  mount_uploader :image, ImageUploader
end
