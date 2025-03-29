class Trainer < ApplicationRecord
  has_many :pokemon, dependent: :destroy
end
