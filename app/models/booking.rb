# == Schema Information
#
# Table name: bookings
#
#  id          :bigint(8)        not null, primary key
#  product_id  :integer
#  renter_id   :integer
#  rent_id     :integer
#  start_id    :date
#  end_date    :date
#  total_price :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Booking < ApplicationRecord
    belongs_to :product
end
