class Book < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader #tell rails to use this uploader for this model
	validates :name, presence: true
end
