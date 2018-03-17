class Emotion < ApplicationRecord
  has_many :thoughts
  has_many :users, through: :thought
  belongs_to :user, required: false

  #need to auto populate emotion box on new thougth page-
  # validates :name, uniqueness: true


end
