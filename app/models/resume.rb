class Resume < ApplicationRecord
	mount_uploader :attachment, AttachmentUploader
	  has_one_attached :image

	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :age, numericality: { only_integer: true }
	validates :contact_number, numericality: { only_integer: true }
	validates :email, uniqueness: true
end
