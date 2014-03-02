class Shop < ActiveRecord::Base

	validates :company, :address, :city, :state, :zip, presence: true
	validates :state, length: { is: 2 }
	validates :zip, length: { is: 5 }
	validates :zip4, length: { is: 4 }

	geocoded_by :address_str

	after_validation :geocode 

def address_str
  [self.address, self.city, self.state, 'US'].compact.join(', ')
end

end
