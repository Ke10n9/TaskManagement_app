class Menu < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :menu_name, presence: true, length: {maximum: 20}
  validates :category, presence: true
  validates :date, presence: true
  validates :time_zone, presence: true
  validates :memo, length: {maximum: 50}
end
