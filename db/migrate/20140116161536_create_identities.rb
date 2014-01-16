class CreateIdentities < ActiveRecord::Migration
  def change
    create_table :identities do |t|
      t.string :name
      t.digest :password

      t.timestamps
    end
  end
end
