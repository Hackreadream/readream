class DreamRow < ActiveRecord::Base
    def change
        creat_table :Dream_Row do |t|
    t.string :dreamt
    t.string :dreamer
    t.string :dreamc
    t.integer :hits
    t.timestamps
end


end
has_many :notes , :foreign_key => "dream_row_id"
end
