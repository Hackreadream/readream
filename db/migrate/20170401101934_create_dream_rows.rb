class CreateDreamRows < ActiveRecord::Migration
  def change
    create_table :dream_rows do |t|
      t.string :dreamt
      t.string :dreamer
      t.string :dreamc
      t.integer :hits

      t.timestamps null: false
    end
  end
end
