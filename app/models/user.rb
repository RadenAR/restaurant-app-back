# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :eaterys, class_name: 'Restaurant',
                     foreign_key: 'restaurant_id',
                     inverse_of: :people
  has_many :reservations, dependent: :destroy
  has_many :restaurants, through: :reservations
end
