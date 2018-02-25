class Emotion < ApplicationRecord
  has_many :thoughts
  has_many :users, through: :thought
  belongs_to :user, required: false

  #validations
  validates :emotion, uniqueness: true
end
