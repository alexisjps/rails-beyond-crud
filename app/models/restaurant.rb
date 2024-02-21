class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy # créé une méthode .reviews
end
