class AddNameToDomitories < ActiveRecord::Migration
  def change
    add_column :domitories, :name, :string
    add_column :domitories, :student_number, :string
    add_column :domitories, :major, :string
    add_column :domitories, :user_phone_number, :string
    add_column :domitories, :parent_phone_number, :string
    add_column :domitories, :room_number, :string
    end
  end
