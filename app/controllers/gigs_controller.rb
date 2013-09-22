class GigsController < ApplicationController

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)

    if @gig.save
      flash[:notice] = "Your gig has been added!"
      redirect_to dashboard_path
    else
      render "new"
    end
  end

  private

  def gig_params
    params.require(:gig).permit(:title, :description)
  end
end
