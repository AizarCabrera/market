require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/vendor'
require './lib/market'

class MarketTest < Minitest::Test

  def test_it_exists
    market = Market.new("South Pearl Street Farmers Market")
    assert_instance_of Market, market
  end

  def test_it_has_name
    market = Market.new("South Pearl Street Farmers Market")
    assert_equal "South Pearl Street Farmers Market", market.name
  end

  def test_it_returns_empty_array_for_vendors
    market = Market.new("South Pearl Street Farmers Market")
    assert_equal [], market.vendors
  end

  def test_it_can_have_vendors
    market = Market.new("South Pearl Street Farmers Market")
     vendor_1 = Vendor.new("Rocky Mountain Fresh")
      vendor_2 = Vendor.new("Ba-Nom-a-Nom")
      vendor_3 = Vendor.new("Palisade Peach Shack")

        market.add_vendor(vendor_1)
        market.add_vendor(vendor_2)
      market.add_vendor(vendor_3)
     expected = [vendor_1, vendor_2, vendor_3]
    assert_equal expected, market.vendors
  end
end
