class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      
      t.integer :dream_row_id
      t.string :memo
      t.string :dreamteller
      t.timestamps null: false
    end
  end
end
