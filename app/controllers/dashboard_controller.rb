class DashboardController < ApplicationController

  before_action :user_logged_in!

  def index
  end

  def gig
    #@gigs = Gig.all
    @gigs = Gig.page(params[:page]).per(5)
  end
end
