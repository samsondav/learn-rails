class VisitorsController < ApplicationController
  def new
    @visitor = Visitor.new
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      flash[:notice] = "Thanks. Your email address \"#{visitor.email}\" was subscribed to our list. Please check your inbox and confirm receipt."
      redirect_to root_path
    else
#      flash message unneccesary due to simple_forms automatic error display
#      flash.now[:error] = "Invalid email address, please check for typos and try again"
      render :new
    end
  end

  private
  def secure_params
    params.require(:visitor).permit(:email)
  end
end
