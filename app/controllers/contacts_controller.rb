class ContactsController < ApplicationController
  def current_user
    nil
  end

  def index
    @contacts = Contact.all
    render :json => @contacts
  end

  def create
    @contact = Contact.create(params[:contact])
    render :json => @contact
  end
end
