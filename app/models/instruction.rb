class Instruction < ApplicationRecord
  belongs_to :guidance
  mount_uploader :picture, PictureUploader
  mount_uploaders :documents, DocumentUploader
end
 