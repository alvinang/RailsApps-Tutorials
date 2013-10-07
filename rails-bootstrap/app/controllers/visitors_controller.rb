class VisitorsController < ApplicationController

  def new
    @visitor = Visitor.new

    flash[:notice] = "Welcome!"
    flash[:alert]  = "Do you like the pictures below?"
  end

  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.update_spreadsheet
      flash[:notice] = "Chose #{@visitor.favorite}."
      render :new
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:visitor).permit(:favorite, :comment)
  end

end
