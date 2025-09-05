class UserProfilesController < ApplicationController
  require "bcrypt"
  def index
    @user_profiles = UserProfile.all
  end

  def show
    @user_profile = UserProfile.find(params[:id])
  end

  def new
    @user_profile = UserProfile.new
  end

  def create
    @user_profile = UserProfile.new(user_profile_params)

    if @user_profile.save
      redirect_to user_profiles_path
    else
      render :new
    end
  end

  def edit
    @user_profile = UserProfile.find(params[:id])
  end

  def update
    @user_profile = UserProfile.find(params[:id])
    if @user_profile.update(user_profile_params)
      redirect_to user_profiles_path
    else
      render :edit
    end
  end

  def delete
    @user_profile = UserProfile.find(params[:id])
    @user_profile.delete
    redirect_to user_profiles_path
  end

  private
  def user_profile_params
    params.require(:user_profile).permit(:fullname, :username, :password, :email)
  end
end
