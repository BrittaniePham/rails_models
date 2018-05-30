class ContactsController < ApplicationController

  def show
    @person = Person.find(params[:person_id])
    @contact = @person.contact
  end

  def new
    @contact = Contact.new
  end

  def edit
    @person = Person.find(params[:person_id])
    @contact = @person.contact
  end

  def update
    @person = Person.find(params[:person_id])
    @contact = @person.contact

    if @contact.update(contact_params)
      redirect_to person_contact_path(@contact)
    else
      render :edit
    end
  end

  def destroy
    @person = Person.find(params[:person_id])
    @person.contact.destroy
    redirect_to person_path(@person)
  end

  private
    def contact_params
      params.require(:contact).permit(:email, :phone_number, :address)
    end
end
