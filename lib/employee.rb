class Employee < ActiveRecord::Base
  belongs_to :store

  # Employees must always have a first name present.
  validates :first_name, presence: true

  # Employees must always have a last name present.
  validates :last_name, presence: true

  # Employees must have an hourly_rate tht is an integer between 40 and 200.
  validates :hourly_rate,
    numericality: {
      only_integer: true,
      greater_than_or_equal_to: 40,
      less_than_or_equal_to: 200
    }

  # Employees must always have a store that they belong to.
  validates :store, presence: true
end
