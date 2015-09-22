class CreateCroomdbs < ActiveRecord::Migration
  def change
    create_table :croomdbs do |t|

      t.integer :domitory_id
      t.integer :student_number
      t.string :apply_date
      t.integer :apply
      t.timestamps null: false
    end
  end
 end