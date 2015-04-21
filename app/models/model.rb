class Model < ActiveRecord::Base
	
	mount_uploader :image, ImageUploader
	belongs_to :brand
	has_many :lines
end
