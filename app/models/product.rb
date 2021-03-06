class Product < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }
  # validates_format_of :image_url, :with => %r{(png|jpg|jpeg)$}i, :message => "incorrect file format (must be .png, .jpg, or .jpeg)", multiline: true

  belongs_to :supplier
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :images
  has_many :product_categories
  has_many :categories, through: :product_categories

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
