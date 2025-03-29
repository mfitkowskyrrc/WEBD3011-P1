class Trainer < ApplicationRecord
  has_many :pokemon, dependent: :destroy
  validates :name, presence: true

  paginates_per 5

  include SearchCop

  search_scope :search do
    attributes :name, :id
  end
end
