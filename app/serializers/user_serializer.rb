# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email
  has_many :restaurants
  has_many :reservations
  has_many :eateries, through: :reservations
end
