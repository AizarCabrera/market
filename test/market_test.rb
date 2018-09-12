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



end
