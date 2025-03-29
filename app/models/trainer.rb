class Trainer < ApplicationRecord
  has_many :pokemon, dependent: :destroy
  validates :name, presence: true

  paginates_per 5
end
