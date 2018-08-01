class Team < ApplicationRecord
  belongs_to :team_name,    class_name: "TeamName", foreign_key: "team_name_id"
  belongs_to :user,    class_name: "User", foreign_key: "user_id"
end
