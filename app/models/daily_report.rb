class DailyReport < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :prev_report, presence: true, length: { maximum: 4096 }
  validates :planned_act, presence: true, length: { maximum: 4096 }
  validates :impediments, presence: true, length: { maximum: 4096 }
end
