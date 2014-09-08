ActiveAdmin.register Shop do
  permit_params :company, :address, :address2, :city, :state, :scf, :zip, :zip4, :mailscore, :latitude, :longitude, :email, :phone, :foursquare_id, :url, :contact_person, :contact_person_email, :facebook, :twitter
end
