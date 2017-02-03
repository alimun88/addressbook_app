class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.integer :streetnumber
      t.string :streetname
      t.string :city
      t.string :state
      t.string :zipcode
      
      t.timestamps
    end
  end
end
