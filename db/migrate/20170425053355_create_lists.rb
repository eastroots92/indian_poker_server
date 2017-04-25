class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :player1 , null:false
      t.string :player2
      t.string :state 

      t.timestamps null: false
    end
  end
end
