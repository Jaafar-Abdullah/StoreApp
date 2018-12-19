# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  product_id :integer
#  user_id    :integer
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
belongs_to :user
belongs_to :product

end
