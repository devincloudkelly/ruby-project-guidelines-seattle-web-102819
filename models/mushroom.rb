class Mushroom < ActiveRecord::Base
    has_many :forages
    has_many :locations, through: :forages
    has_many :users, through: :forages
end