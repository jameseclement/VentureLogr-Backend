class Entry < ApplicationRecord
  has_many :photos
  belongs_to :trip
end
