class Episode < ApplicationRecord
    has_many :appearance
    has_many :guest, through: :appearance
end
