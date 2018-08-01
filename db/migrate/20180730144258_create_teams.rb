class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :team_name_id
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :team_name, :team_name_id
    add_foreign_key :user, :user_id
  end
end
