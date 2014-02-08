class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :list_price, precision: 8, scale: 2
      t.decimal :member_price, precision: 8, scale: 2
      t.string :category

      t.timestamps
    end
  end
end
