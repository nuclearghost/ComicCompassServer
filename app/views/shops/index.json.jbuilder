json.array!(@shops) do |shop|
  json.extract! shop, :id, :company, :address, :address2, :city, :state, :scf, :zip, :zip4, :mailscore, :sic1code, :sic1, :sic2code, :sic2, :sic3code, :sic3, :sic4code, :sic4, :latitude, :longitude
  json.url shop_url(shop, format: :json)
end
