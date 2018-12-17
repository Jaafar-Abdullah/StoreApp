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
#

class Product < ApplicationRecord
    has_many :products
    has_one :sale
end
