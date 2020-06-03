class Ability < ApplicationRecord
  scope :keyword, -> (keyword) { where("name or foci like ?", "%#{keyword}%") }
  scope :pool, -> (pool) { where("pool like ?", "%#{pool}%") }
  scope :cost, -> (cost) {where("cost like ?", "%#{cost}%")}
  scope :category, -> (category) {where("category like ?", "%#{category}%")}
  scope :kind, -> (kind) {where("kind like ?", "%#{kind}%")}
  scope :power, -> (power) {where("power like ?", "%#{power}%")}
end
