class HomesController < ApplicationController

  def show
    @gig = Gig.last
  end

end
