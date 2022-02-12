class Goal < ApplicationRecord
    belongs_to :user
    has_many :logs
    has_many :comments, through :logs
end