class Product < ApplicationRecord

  validates :name, uniqueness: true, presence: true

  def is_discounted?
    price < 10
  end
  def tax
    (price * 0.09).round(2)
  end
  def total
    price + tax
  end

end
