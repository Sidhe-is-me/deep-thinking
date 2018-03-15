class Thought < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user, required: false
  belongs_to :emotion

  #validations
  validates :date, presence: true
  validates :entry, length: {minimum: 50}

# #accepts_nested_attributes_for :emotions
#   def emotions_attributes=(emotions_attributes)
#     #this is an example from Avi's video- Not gonna work for me as I only have one attribute(name) for emotions
#     emotions_attributes.each do |emotion_attributes|
#       self.emotion.build(emotion_attributes)
#     end
  # end


end
