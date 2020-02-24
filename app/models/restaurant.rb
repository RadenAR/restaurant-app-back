class Restaurant < ApplicationRecord
  belongs_to :user, class_name: 'User',
                    inverse_of: :restaurants
  has_many :reservations, dependent: :destroy
  has_many :persons, through: :reservations,
                     source: :user
end
