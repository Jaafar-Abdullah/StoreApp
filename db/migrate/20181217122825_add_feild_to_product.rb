class AddFeildToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :is_sale, :boolean ,default: false
  end
end
