class Thought < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user, required: false
  belongs_to :emotion
  accepts_nested_attributes_for :emotion

  #validations
  validates :date, presence: true
  validates :entry, length: {minimum: 50}



#accepts_nested_attributes_for :emotions
def emotions_attributes=(emotion_attributes)

    emotion = Emotion.find(emotion_attributes[:id]) #this shouldn't be needed since the next line?
      self.emotion_id = emotion.id
      self.save #also maybe not needed
   end


end
