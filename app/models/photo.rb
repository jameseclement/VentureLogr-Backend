class Photo < ApplicationRecord
  belongs_to :entry
  has_one_attached :image
end
