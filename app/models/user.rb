# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :restaurants, class_name: 'Restaurant',
                         inverse_of: :user
  has_many :reservations, dependent: :destroy
  has_many :eateries, through: :reservations,
                      source: :restaurant
end
