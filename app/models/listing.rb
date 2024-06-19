class Listing < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :bookings, dependent: :destroy
end


# Add only the necessary CRUD actions for listing and test them with Postman
