class Location < ActiveRecord::Base
    has_many :forages
    has_many :mushrooms, through: :forages
    has_many :users, through: :forages
end