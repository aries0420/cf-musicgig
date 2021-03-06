class GigsController < ApplicationController
  before_action :user_logged_in!

  def index
  end

  def new
    @gig = Gig.new
  end

  def create
    @gig = Gig.new(gig_params)
    @gig.user = current_user

    if @gig.save
      flash[:notice] = "Your gig has been added!"
      # redirect_to dashboard_path
      redirect_to @gig
    else
      render "new"
    end
  end

  def show
    @gig = Gig.find(params[:id])
  end

  def edit
    @gig = Gig.find(params[:id])
  end

  def update
    @gig = Gig.find(params[:id])
    if @gig.update(gig_params)
      flash[:notice] = "This gig has been updated."
      redirect_to gig_url
    else
      render "edit"
    end
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy
    redirect_to dashboard_url
  end

  private

  def gig_params
    params.require(:gig).permit(:title, :description, :cover_image, :retained_cover_image, :genre, :location, :date)
  end
end
