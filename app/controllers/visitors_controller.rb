class VisitorsController < ApplicationController
  def new
    Rails.logger.debug 'DEBUG: entering new method'
    @owner = Owner.new
    Rails.logger.debug "DEBUG: Owner name is: #{@owner.name}"
    render 'visitors/new' # code redundant, this is the default action anyway
  end
end
