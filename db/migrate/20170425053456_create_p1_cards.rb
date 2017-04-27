class CreateP1Cards < ActiveRecord::Migration
  def change
    create_table :p1_cards do |t|
      t.integer :no
      t.integer :"0"
      t.integer :"1"
      t.integer :"2"
      t.integer :"3"
      t.integer :"4"
      t.integer :"5"
      t.integer :"6"
      t.integer :"7"
      t.integer :"8"
      t.integer :"9"

      t.timestamps null: false
    end
  end
end
