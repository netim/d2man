class CreateTeamAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :team_admins do |t|
      t.integer :team_name_id
      t.integer :admin_id

      t.timestamps
    end
    add_foreign_key :team_name, :team_name_id
    add_foreign_key :user, :admin_id
  end
end
