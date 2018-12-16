require 'minitest/autorun'
require 'minitest/pride'
require './lib/reader.rb'
require './lib/topping.rb'
require 'pry'

class ToppingTest < Minitest::Test
  def setup
    @topping_data = { "id" => "5001", "type" =>"None" }
    @topping = Topping.new(@topping_data)
  end

  def test_it_exists
    assert_instance_of Topping, @topping
    # binding.pry
  end

  def test_it_has_a_type
    assert_equal "None", @topping.type
  end

  def test_has_an_id
    assert_equal "5001", @topping.id
  end

end
