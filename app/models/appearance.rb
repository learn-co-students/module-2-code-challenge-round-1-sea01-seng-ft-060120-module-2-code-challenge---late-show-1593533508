class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, numericality: {greater_than_or_equal_to: 1}
    validates :rating, numericality: {less_than_or_equal_to: 5}
    validates :episode_id, uniqueness: true
end
