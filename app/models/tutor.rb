class Tutor < ApplicationRecord
  has_many :klasses
  has_many :reviews
  belongs_to :user
end
