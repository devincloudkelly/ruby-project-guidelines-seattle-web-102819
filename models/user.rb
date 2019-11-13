class User < ActiveRecord::Base
    has_many :forages
    has_many :locations, through: :forages
    has_many :mushrooms, through: :forages
end