require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/vendor'

class VendorTest < Minitest::Test

  def test_it_exists
  vendor = Vendor.new("Rocky Mountain Fresh")
  assert_instance_of Vendor, vendor
  end

  def test_it_has_name
  vendor = Vendor.new("Rocky Mountain Fresh")
  assert_equal "Rocky Mountain Fresh", vendor.name
  end

  def test_it_can_return_an_empty_hash_for_inventory
  vendor = Vendor.new("Rocky Mountain Fresh")
  assert_instance_of Hash, vendor.inventory
  end

  def test_it_can_check_stock_starting_at_0_and_add_more
  vendor = Vendor.new("Rocky Mountain Fresh")

  assert_equal 30, vendor.stock("Peaches",30).to_i
  assert_equal 55, vendor.stock("Peaches",25).to_i
  assert_equal 0, vendor.check_stock("Peaches")
  end

end
