class CreateSleepoutdbs < ActiveRecord::Migration
  def change
    create_table :sleepoutdbs do |t|

      t.integer :student_number
      t.integer :room_number
      t.string :apply_start_date
      t.string :apply_end_date
      t.integer :apply
      
      t.timestamps null: false
      
    end
  end
end
