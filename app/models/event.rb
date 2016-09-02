class Event < ApplicationRecord
  scope :search, ->(query) { where('name LIKE ? OR place LIKE ? OR description LIKE ?', "%#{query}%", "%#{query}%", "%#{query}%") }
end
