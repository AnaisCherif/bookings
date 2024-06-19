class Booking < ApplicationRecord
  belongs_to :listing
end

# Bookings can be cancelled, in which case any reservations existing during that booking should be cancelled too.
