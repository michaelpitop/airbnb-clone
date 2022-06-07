class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: :home

  def home
    @listings = Listing.all
    @users = User.all
  end

  def new
  end

  def create

  end
end
