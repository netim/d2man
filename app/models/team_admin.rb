class TeamAdmin < ApplicationRecord
  belongs_to :team_name,    class_name: "TeamName", foreign_key: "team_name_id"
  belongs_to :team_admin,    class_name: "User", foreign_key: "admin_id"
end
