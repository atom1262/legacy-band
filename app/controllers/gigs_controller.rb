class GigsController < ApplicationController

  def new
    @gig = Gig.new
  end

  def create
    Gig.create(gig_params)
    redirect_to root_path
  end

  private

  def gig_params
    params.require(:gig).permit(:name, :city, :state, :address, :date, :details, :latitude, :longitude)
  end

end
