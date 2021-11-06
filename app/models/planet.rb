class Planet < ApplicationRecord
  validates :name, :diameter, :mass, :orbital_distance, :color, presence: true
  validates :diameter, :mass, :orbital_distance, numericality: { only_integer: true, greater_than: 0}
end
