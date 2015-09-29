class AddCitytoOrganisation < ActiveRecord::Migration
  def change
    add_column :organisations, :city, :string
    add_column :organisations, :zip, :integer
    add_column :organisations, :phone, :string
    add_column :organisations, :website, :string
  end
end
