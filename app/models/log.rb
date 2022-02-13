class Log < ApplicationRecord
    has_many :comments, dependent: :destroy
    belongs_to :goal
end
