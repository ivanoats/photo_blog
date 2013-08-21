class Photo::ImageWorker
  include Sidekiq::Worker

  def perform(id, key)
    Rails.logger.info("begin processing photo #{id}")
    photo = Photo.find(id)
    photo.key = key
    photo.remote_image_url = photo.image.direct_fog_url(with_path: true)
    photo.save!
    photo.update_column(:image_processed, true)
    Rails.logger.info("done processing photo #{id}")
  end
end
