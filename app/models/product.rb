class Product < ApplicationRecord
  before_save(:titleize_product)
  scope :USA, -> { where(country_of_origin: "United Sates of America") }
  scope :three_most_recent, -> {order(created_at: :desc).limit(3)}
  has_many :reviews

private
  def titleize_product
    self.name = self.name.titleize
  end

  def self.usa
    where(country_of_origin: "United Sates of America")
  end

  def self.three_most_recent
    order(created_at:  :desc).limit(3)
  end
  # def self.popular_product
  # end
end
