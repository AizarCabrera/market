require 'pry'

class Market
  attr_reader :name, :vendors
  #
  def initialize(name)
    @name      = name
    @vendors   = []
  end
  #
  # def check_stock(fruit)
  #   @inventory[fruit]
  # end
  #
  # def stock(fruit, quantity)
  #   @inventory[:fruit] += quantity
  # end
end
