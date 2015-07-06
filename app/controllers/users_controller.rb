class UsersController < ApplicationController

  before_action :authenticate_user!
  before_action :set_user

  respond_to :html, :js

  def show
    @activities = PublicActivity::Activity.where(owner: @user).paginate(page: params[:page], per_page: 10).order(created_at: :desc)
  end

  def edit
  end

  def update
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def friends
    @friends = @user.following_users.paginate(page: params[:page])
  end

  def followers
    @followers = @user.user_followers.paginate(page: params[:page])
  end

  private
  def user_params
    params.require(:user).permit(:name, :about, :avatar, :cover)
  end

  def set_user
    @user = User.find(params[:id])
  end
end