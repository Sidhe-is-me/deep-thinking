class Thought < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user, required: false
  belongs_to :emotion
  accepts_nested_attributes_for :emotion

  #validations
  validates :date, presence: true
  validates :entry, length: {minimum: 50}


  def emotions_attributes=(emotion_attributes)
      emotion = Emotion.find(emotion_attributes[:id])
        self.emotion_id = emotion.id
        self.save 
  end

  def self.total_each_day
    @thoughts = Thought.all
    @thoughts.group('date').order('count_id desc').count('id')


  end

end
