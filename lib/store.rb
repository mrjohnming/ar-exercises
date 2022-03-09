class Store < ActiveRecord::Base
  has_many :employees

  # Stores must always have a name that is a minimum of 3 characters.
  validates :name, length: {minimum: 3}

  # Stores have an annual_revenue that is an integer that must be 0 or more.
  validates :annual_revenue,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 0
    }

  # BONUS: A store must carry at least one of the men's or women's apparel.
  
end
