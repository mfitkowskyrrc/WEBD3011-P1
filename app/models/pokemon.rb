class Pokemon < ApplicationRecord
  belongs_to :trainer

  validates :name, presence: true
  validates :dex_number, presence: true
end
