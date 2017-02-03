class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit, :show, :update, :destroy]
  
  def index
    @contacts = Contact.all
  end
    
  def new
    @contact = Contact.new
  end
    
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:success] = "Contact was created successfully"
      redirect_to contact_path(@contact)
    else
      render 'new'
    end
  end
  
  def edit 
   
  end
  
  def update
    if @contact.update(contact_params)
      flash[:success] = "Contact was updated successfully"
      redirect_to contact_path(@contact)
    else
      render 'new'
    end
  end
  
  def show
  
  end
  
  def destroy
    @contact.delete
    flash[:danger] = "Contact was successfully deleted"
    redirect_to contacts_path
  end
  
  def set_contact
     @contact = Contact.find(params[:id])
  end
  
  def contact_params
    params.require(:contact).permit(:firstname, :middlename, :lastname, :streetnumber, :streetname, :city, :state, :zipcode)
  end
end