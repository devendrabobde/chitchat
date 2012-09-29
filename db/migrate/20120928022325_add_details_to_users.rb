class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :address, :string
    add_column :users, :mobile_no, :bigint
  end
end
