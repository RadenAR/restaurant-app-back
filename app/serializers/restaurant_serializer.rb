# frozen_string_literal: true

class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :rating, :cuisine_type, :healthy, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
