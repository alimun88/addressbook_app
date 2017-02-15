class Contact < ActiveRecord::Base
  belongs_to :user
  validates :firstname, :lastname, :streetname, :streetnumber, :zipcode, :city, :state, :country, presence: true

  geocoded_by :address
  

  def address
    # or whatever format you prefer
    [streetnumber, streetname, city, state, zipcode, country].join(' ')
  end
    
end