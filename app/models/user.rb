class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :teams,    class_name: "Team", foreign_key: "user_id", dependent: :destroy
  has_many :team_names, through: :teams
  has_many :team_admin, class_name: "TeamAdmin", foreign_key: "admin_id", dependent: :destroy
  has_many :team_name,  through: :team_admin
  has_many :daily_reports,  class_name: "DailyReport", foreign_key: "user_id", dependent: :destroy
end
