# == Schema Information
#
# Table name: shops
#
#  id                   :integer          not null, primary key
#  company              :string(255)
#  address              :string(255)
#  address2             :string(255)
#  city                 :string(255)
#  state                :string(255)
#  scf                  :string(255)
#  zip                  :string(255)
#  zip4                 :string(255)
#  mailscore            :string(255)
#  sic1code             :string(255)
#  sic1                 :string(255)
#  sic2code             :string(255)
#  sic2                 :string(255)
#  sic3code             :string(255)
#  sic3                 :string(255)
#  sic4code             :string(255)
#  sic4                 :string(255)
#  latitude             :float
#  longitude            :float
#  created_at           :datetime
#  updated_at           :datetime
#  email                :string(255)
#  phone                :string(255)
#  foursquare_id        :string(255)
#  url                  :string(255)
#  contact_person       :string(255)
#  contact_person_email :string(255)
#  facebook             :string(255)
#  twitter              :string(255)
#

class Shop < ActiveRecord::Base

	validates :company, :address, :city, :state, :zip, presence: true
	validates :state, length: { is: 2 }
	validates :zip, length: { is: 5 }
	validates :zip4, length: { is: 4 }

	geocoded_by :address_str

	after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? } 

def address_str
  [self.address, self.city, self.state, 'US'].compact.join(', ')
end

end
