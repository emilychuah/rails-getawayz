class UsersController < ApplicationController
  before_action :find_user, only: [:listings]

  def listings
    @listings = @user.listings
    authorize @listings
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
