class Reservation < ApplicationRecord
  belongs_to :restaurant, inverse_of: :reservations
  belongs_to :user, inverse_of: :reservations
end
