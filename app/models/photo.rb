class Photo < ApplicationRecord
	#Mounts paperclip image
  has_attached_file :image
  validates_attachment_content_type :image, :content_type =>
  	["image/jpg", "image/jpeg", "image/png", "image/gif"], size: { in: 0..100.kilobytes }
end
