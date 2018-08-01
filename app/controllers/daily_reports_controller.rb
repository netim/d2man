class DailyReportsController < ApplicationController
  before_action :authenticate_user!

  def create
    @daily_report = current_user.daily_reports.build(daily_report_params)
    if @daily_report.save
      flash[:success] = "Daily report created!"
      redirect_to root_url
    else
      render 'd2man/home'
    end
  end

  def destroy
  end

  private

    def daily_report_params
      params.require(:daily_report).permit(:prev_report, :planned_act, :impediments)
    end
end
