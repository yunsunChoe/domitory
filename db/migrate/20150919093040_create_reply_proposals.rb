class CreateReplyProposals < ActiveRecord::Migration
  def change
    create_table :reply_proposals do |t|
      t.integer :proposal_id
      t.text :answer_content
      t.string :answer_studentID
      
      t.timestamps null: false
    end
  end
end
