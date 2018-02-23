class Emotion < ApplicationRecord
  has_many :thoughts
  has_many :users, through: :thought

  #validations
  validates :emotion, uniqueness: true
end
