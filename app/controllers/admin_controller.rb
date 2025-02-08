class AdminController < ApplicationController
  before_action :authenticate_user!  # Ensure users are logged in
  before_action :authenticate_admin

  def dashboard
    @total_users = User.count
    @total_stores = Store.count
    @total_ratings = Rating.count
  end

  def users
    @users = User.all
  end
  def create_admin
    @admin = User.new
  end

  def save_admin
    @admin = User.new(admin_params)
    @admin.admin = true  # Set user as admin

    if @admin.save
      redirect_to admin_dashboard_path, notice: "Admin user created successfully!"
    else
      render :create_admin
    end
  end
  def new_user
    @user = User.new
  end

  def create_user
    @user = User.new(user_params)

    if @user.save
      redirect_to admin_dashboard_path, notice: "User created successfully!"
    else
      render :new_user
    end
  end
  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  def admin_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def authenticate_admin
    unless current_user.admin?
      redirect_to root_path, alert: "Access denied! Only admins can view this page."
    end
  end
end
