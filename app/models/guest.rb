class Guest < ApplicationRecord
    has_many :episodes
    has_many :apperances, through: :episodes
end
