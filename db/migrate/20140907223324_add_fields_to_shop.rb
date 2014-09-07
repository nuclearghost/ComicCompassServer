class AddFieldsToShop < ActiveRecord::Migration
  def change
    add_column :shops, :contact_person, :string
    add_column :shops, :contact_person_email, :string
    add_column :shops, :facebook, :string
    add_column :shops, :twitter, :string
  end
end
