class ChangeCardStatus < ActiveRecord::Migration
  def up
  	change_table :cards do |t|
  	  t.change :status, :boolean
  	end
  end

  def down
  	change_table :cards do |t|
  	  t.change :status, :string
  	end
  end
end
