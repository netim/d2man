class UsersController < ApplicationController

  def new
       @user = User.new
  end

  def edit
     @user = User.find(params[:id])
   end

  def index
    @users = User.paginate(page: params[:page])
  end

  def show
    @user = User.find(params[:id])
    @daily_reports = @user.daily_reports.paginate(page: params[:page])
  end

  def destroy
    if current_user.admin?
      User.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to root_url
    end
  end

end
