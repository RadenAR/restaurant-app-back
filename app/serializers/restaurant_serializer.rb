# frozen_string_literal: true

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rating, :cuisine_type, :healthy, :editable
  has_one :user
  has_many :reservations
  has_many :people

  def editable
    scope == object.people
  end
end
