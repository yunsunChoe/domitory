class AddAuthTokenToDomitories < ActiveRecord::Migration
  def change
    add_column :domitories, :auth_token, :string
  end
end
