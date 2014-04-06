class ContactsController < ApplicationController

  # GET /contact
  def new
    @contact = Contact.new
  end

  # POST /contact
  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
#      @contact.update_spreadsheet #disabled for heroku
      @contact.send_email
      flash[:notice] = "Thanks for your message, #{@contact.name}"
      redirect_to root_path
    else
#      flash unnecessary due to simple forms automatice error handling
#      flash.now[:error] = "Contact details are invalid."
      render :new
    end
  end

  private
  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end
end
