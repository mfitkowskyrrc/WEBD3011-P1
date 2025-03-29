class Pokemon < ApplicationRecord
  belongs_to :trainer
  has_many :pokemon_types
  has_many :poke_types, through: :pokemon_types

  validates :name, presence: true
  validates :dex_number, presence: true

  paginates_per 20

  include SearchCop

  search_scope :search do
    attributes :name, :dex_number
  end
end
