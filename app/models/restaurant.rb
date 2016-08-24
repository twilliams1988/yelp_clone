class Restaurant < ApplicationRecord
  has_many :reviews
  belongs_to :user

  has_many :reviews, dependent: :destroy
  validates :name, length: { minimum: 3 }, uniqueness: true
end
