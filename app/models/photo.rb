class Photo < ActiveRecord::Base
  attr_accessible :title, :image
  mount_uploader :image, ImageUploader
  def image_name
    File.basename(image.path || image.filename) if image
  end
end
