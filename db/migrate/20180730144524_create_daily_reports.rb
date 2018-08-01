class CreateDailyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_reports do |t|
      t.integer :user_id
      t.text :prev_report
      t.text :planned_act
      t.text :impediments

      t.timestamps
    end
    add_index :daily_reports, [:user_id, :created_at]
    add_foreign_key :user, :user_id
  end
end
