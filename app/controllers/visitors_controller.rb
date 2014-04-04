class VisitorsController < ApplicationController
  def new
    @owner = Owner.new
    render 'visitors/new' # code redundant, this is the default action anyway
  end
end
