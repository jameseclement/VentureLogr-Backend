class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :story, :date, :trip_id
  has_many :photos
  has_one :trip 
end
