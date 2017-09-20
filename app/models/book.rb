class Book < ApplicationRecord
	mount_uploader :attachment,  AttachmentUploader #tell rails to use this uploader for this model
	mount_uploader :image, AttachmentUploader
	validates :name, presence: true
	validates :author, presence: true
end
