# frozen_string_literal: true

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rating, :cuisine_type, :healthy, :editable
  has_one :user, inverse_of: :restaurants
  has_many :reservations
  has_many :persons, through: :reservations

  def editable
    scope == object.user
  end
end
