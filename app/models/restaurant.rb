class Restaurant < ApplicationRecord
  belongs_to :people, class_name: 'User',
                      foreign_key: 'restaurant_id',
                      inverse_of: :eaterys
  has_many :reservations, dependent: :destroy
  has_many :restaurants, through: :reservations
end
