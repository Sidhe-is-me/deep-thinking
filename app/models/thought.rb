class Thought < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user, required: false
  belongs_to :emotion

  #validations
  validates :date, presence: true
  validates :entry, length: {minimum: 50}
  
end
