class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :people, :date, :time, :editable
  has_one :restaurant
  has_one :user

  def editable
    scope == object.user
  end
end
