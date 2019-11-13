class Forage < ActiveRecord::Base
    belongs_to :mushroom
    belongs_to :location
    belongs_to :user
end