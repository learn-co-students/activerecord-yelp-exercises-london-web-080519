class Dish < ActiveRecord::Base
  belongs_to :restaurant
  has_many :dish_tags
  has_many :tags, through: :dish_tags

  validates :name, presence: true
  validates :restaurant, presence: true
  validates_associated :dish_tags
end
