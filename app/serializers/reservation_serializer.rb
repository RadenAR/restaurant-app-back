class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :people, :date, :time
  has_one :restaurant
  has_one :user
end
