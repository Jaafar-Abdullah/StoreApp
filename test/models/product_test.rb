# == Schema Information
#
# Table name: products
#
#  id          :bigint(8)        not null, primary key
#  name        :string
#  description :text
#  price       :integer
#  user_id     :integer
#  image_url   :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_sale     :boolean          default(FALSE)
#  is_rent     :boolean          default(FALSE)
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
