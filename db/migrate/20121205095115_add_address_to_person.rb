class AddAddressToPerson < ActiveRecord::Migration
  def change
    add_column :people, :street_address, :string
    add_column :people, :city, :string
    add_column :people, :state, :string
    add_column :people, :zip, :string
  end
end
