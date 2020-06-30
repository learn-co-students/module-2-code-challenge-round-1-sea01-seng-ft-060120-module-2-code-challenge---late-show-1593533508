class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode

    validates :rating, :inclusion => { :in => 1..5 }, :presence => { :message => "must be within 1-5" }
    #validates correctly but message not working
end
