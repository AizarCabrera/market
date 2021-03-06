require 'pry'

class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name      = name
    @vendors   = []
  end

  def add_vendor(vendor_name)
    @vendors << vendor_name
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end
end
