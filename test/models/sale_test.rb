# == Schema Information
#
# Table name: sales
#
#  id         :bigint(8)        not null, primary key
#  product_id :integer
#  seller_id  :integer
#  buyer_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
