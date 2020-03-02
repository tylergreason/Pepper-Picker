class Shop < ApplicationRecord
    has_many :plant_shops
    has_many :shops, through: :plant_shops
end
