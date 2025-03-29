class Trainer < ApplicationRecord
  has_many :pokemon, dependent: :destroy
  validates :name, presence: true
end
