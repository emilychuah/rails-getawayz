class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = policy_scope(User).order(created_at: :desc)
  end

  def show
    authorize @user
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
end
