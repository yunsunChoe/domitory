class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :p_category
      t.string :p_answer
      t.string :p_title
      t.text :p_content
      t.string :p_studentID #작성자 학번

      t.timestamps null: false
    end
  end
end
