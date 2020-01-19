class Product < ApplicationRecord
  scope :USA, -> { where(country_of_origin: "United Sates of America") }
  has_many :reviews

  def self.usa
    where(country_of_origin: "United Sates of America")
  end
end
