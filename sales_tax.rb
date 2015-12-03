class Product
  
  attr_accessor :price, :qty, :name

  def initialize(price, qty, name)
    @price = price
    @qty = qty
    @name = name
  end

  def tax
    return 0.10
  end

end

class FoodProduct < Product

  def tax
    return 0
  end

end

class BookProduct < Product

  def tax 
    return 0.05
  end

end

class MedProduct < Product

  def tax 
    return 0.05
  end

end

class Cart

  def initialize
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def print_receipt
    total = 0
    @products.each do |product|
      total += (product.price + product.tax)
    end
    puts "The total is #{total}"
  end

end

candy = FoodProduct.new(12.99, 1, "Candy")
book = BookProduct.new(10.99, 1, "Life of Pi")
aspirin = MedProduct.new(14.99, 1, "Aspirin")

cart = Cart.new
cart.add_product(candy)
cart.add_product(book)
cart.add_product(aspirin)
cart.print_receipt



