class User < ApplicationRecord
    has_many :comments
    has_many :goals
    has_many :logs, through :goals
end
