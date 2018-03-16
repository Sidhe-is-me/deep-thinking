class Emotion < ApplicationRecord
  has_many :thoughts
  has_many :users, through: :thought
  belongs_to :user, required: false

  #validations- if I add the validation it does not save ever
   #validates :name uniqueness: true




end
