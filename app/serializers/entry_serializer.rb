class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :story, :date, :trip_id
  has_many :photos 
end
