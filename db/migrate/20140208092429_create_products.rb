class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :list_price
      t.decimal :member_price
      t.string :category

      t.timestamps
    end
  end
end
