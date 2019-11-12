class Forage < ActiveRecord::Base
    belongs_to :mushroom
    belongs_to :location
end