class Issue < ActiveRecord::Base
	has_many :comments
	mount_uploader :picture, PictureUploader

	# Validação de formulário
	validates :title, length: { minimum: 10, maximum: 30 }, presence: true
	validates :descriptiion, length: { minimum: 50, maximum: 500 }, presence: true
	validates :address, length: { minimum: 10 }, presence: true
end
