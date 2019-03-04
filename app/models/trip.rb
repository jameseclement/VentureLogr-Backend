class Trip < ApplicationRecord
  has_many :entries
  has_many :photos, through: :entries
end
