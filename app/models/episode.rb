class Episode < ApplicationRecord
    has_many :guest
    has_many :apperances, through: :guest
end
