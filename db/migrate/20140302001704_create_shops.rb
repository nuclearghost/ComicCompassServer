class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :company
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :scf
      t.string :zip
      t.string :zip4
      t.string :mailscore
      t.string :sic1code
      t.string :sic1
      t.string :sic2code
      t.string :sic2
      t.string :sic3code
      t.string :sic3
      t.string :sic4code
      t.string :sic4
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
