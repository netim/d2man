class D2manController < ApplicationController
  before_action :authenticate_user!
  def home
    @team_names = TeamName.all
    @users = User.paginate(page: params[:page])
    @daily_report = current_user.daily_reports.build if user_signed_in?
  end
end
