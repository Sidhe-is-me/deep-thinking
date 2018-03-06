class Thought < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user, required: false
  belongs_to :emotion

  #validations
  validates :date, presence: true
  validates :entry, length: {minimum: 50}


  def emotions_attributes=(emotions_attributes)
    emotions_attributes.each do |emotion_attributes|
      self.emotion.build(emotion_attributes)
    end
  end


end
