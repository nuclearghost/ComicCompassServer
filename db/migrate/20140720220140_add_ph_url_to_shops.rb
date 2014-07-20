class AddPhUrlToShops < ActiveRecord::Migration
  def change
    add_column :shops, :url, :string
  end
end
