class PlantShop < ApplicationRecord
  belongs_to :shop
  belongs_to :plant
end
