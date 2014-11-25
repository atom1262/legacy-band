class MembersController < ApplicationController

  def new
    @member = Member.new
  end

  def create
    Member.create(member_params)
    redirect_to root_path
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :instrument)
  end

end
