class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      # flash.now[:error] = nil
      flash.now[:notice] = 'Your message has been sent!'
    else
      flash.now[:error] = 'Sorry, this message was not delivered. Please retry.'
      render :new
    end
  end
end
