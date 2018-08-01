class TeamName < ApplicationRecord
  has_many :teams,    class_name: "Team", foreign_key: "team_name_id"
  has_one :team_admin,    class_name: "TeamAdmin", foreign_key: "team_name_id"
end
