class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :mobile
      t.string :email
      t.integer :card_id
      t.integer :credit
      t.integer :identity_id

      t.timestamps
    end
  end
end
