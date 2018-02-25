class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :thoughts
  has_many :emotions, through: :thoughts

  accepts_nested_attributes_for :thoughts

  #validations
  validates :email, uniqueness: true

  include Gravtastic
  gravtastic
end
