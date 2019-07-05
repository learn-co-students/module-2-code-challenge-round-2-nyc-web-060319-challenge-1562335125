class Guest < ApplicationRecord
    has_many :appearance
    has_many :episode, through: :appearance
end
