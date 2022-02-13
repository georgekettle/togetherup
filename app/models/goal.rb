class Goal < ApplicationRecord
    belongs_to :user
    has_many :logs, dependent: :destroy
    has_many :comments, through: :logs
    enum frequency_interval: { day: 0, week: 1, month: 2, year: 3}, _default: :week
    enum style: { frequency: 0, metric: 1 }, _default: :frequency
end