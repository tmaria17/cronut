require 'minitest/autorun'
require 'minitest/pride'
require './lib/reader.rb'
require './lib/topping.rb'
require './lib/batter.rb'
require './lib/item.rb'
require 'pry'

class ItemTest < Minitest::Test
  def setup
    @item_data= Reader.new.read_data
    @item = Item.new(@item_data)
  end

  def test_it_exists
    assert_instance_of Item, @item
  end

  def test_it_has_a_type
    assert_equal "donut", @item.type
  end

  def test_it_has_an_id
    assert_equal "0001", @item.id
  end

  def test_it_has_a_name
    assert_equal "Cake", @item.name
  end
  def test_it_has_a_price
    assert_equal 0.55, @item.ppu
  end

  def test_it_has_batters
    # binding.pry
    assert_equal "Regular", @item.batters.first.type
    assert_instance_of Batter, @item.batters.first
  end

  def test_it_has_toppings
    assert_equal "None", @item.toppings.first.type
    assert_instance_of Topping, @item.toppings.first
  end
end
