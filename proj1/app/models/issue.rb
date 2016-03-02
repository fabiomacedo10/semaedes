class Issue < ActiveRecord::Base
	has_many :dsqus
	mount_uploader :picture, PictureUploader
end
