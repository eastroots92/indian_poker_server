class CreateP1Cards < ActiveRecord::Migration
  def change
    create_table :p1_cards do |t|
      t.string :no
      t.string :"0"
      t.string :"1"
      t.string :"2"
      t.string :"3"
      t.string :"4"
      t.string :"5"
      t.string :"6"
      t.string :"7"
      t.string :"8"
      t.string :"9"

      t.timestamps null: false
    end
  end
end
