class Plant < ApplicationRecord
    has_many :plant_shops
    has_many :plants, through: :plant_shops
end
