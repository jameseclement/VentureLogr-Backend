class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :description, :photo
  has_many :entries
  has_many :photos, through: :entries
end
