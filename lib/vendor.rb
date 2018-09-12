require 'pry'

class Vendor
  attr_reader :name, :inventory


  def initialize(name)
    @name      = name
    @inventory = {}
  end

def check_stock(something)
  @inventory[:key] = 0
end

def stock(fruit, quantity)
  @inventory [:key] = '30'
end

end
