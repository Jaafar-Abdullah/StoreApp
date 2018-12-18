class AddFeildToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :is_sale, :boolean ,default: false
    add_column :products, :is_rent, :boolean ,default: false
  end
end
