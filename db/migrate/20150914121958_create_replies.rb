class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :community_id
      t.text :r_content
      t.string :r_studentID
      
      t.timestamps null: false
    end
  end
end
