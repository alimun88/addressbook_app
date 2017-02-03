class Contact < ActiveRecord::Base
  validates :firstname, :lastname, :streetname, :streetnumber, :zipcode, :city, :state, presence: true

  geocoded_by :address
  

  def address
    # or whatever format you prefer
    [streetnumber, streetname, city, state, zipcode].join(' ')
  end
    
end