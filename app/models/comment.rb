class Comment < ActiveRecord::Base
    def change
    create_table :comments do |t|
      t.text :cc
      t.integer :dream_id
      
      t.timestamps
    
    end
  end
    belongs_to :dream_row
end
