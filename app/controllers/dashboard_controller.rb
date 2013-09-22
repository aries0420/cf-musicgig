class DashboardController < ApplicationController

  before_action :user_logged_in!

  # def index
  #   @gigs = Gig.page(params[:page]).per(4)
  # end

  def gig
    #@gigs = Gig.all
    @gigs = Gig.page(params[:page]).per(4)
  end
end
