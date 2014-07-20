class AddPhoneEmailFourSquareToShops < ActiveRecord::Migration
  def change
    add_column :shops, :email, :string
    add_column :shops, :phone, :string
    add_column :shops, :foursquare_id, :string
  end
end
