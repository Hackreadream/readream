class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
    
      t.string :cc
      t.integer :dream_id
      t.timestamps null: false
    end
  end
end
