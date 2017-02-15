class AddTelToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :address2, :string
    add_column :contacts, :home_telephone, :string
    add_column :contacts, :mobile_telephone, :string
  end
end
