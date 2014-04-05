class ContactsController < ApplicationController

  # GET /contact
  def new
    @contact = Contact.new
  end

  # POST /contact
  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      #TODO save data
      #TODO send message
      flash[:notice] = "Thanks for your message, #{@contact.name}"
      redirect_to root_path
    else
      render :new
      flash[:error] = "Contact details are invalid."
    end
  end

  private
  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
