require 'minitest/autorun'
require 'minitest/pride'
require './lib/reader.rb'
require './lib/batter.rb'
require 'pry'

class ToppingTest < Minitest::Test
  def setup
    @batter_data = { "id" => "1002", "type" => "Chocolate" }
    @batter = Batter.new(@batter_data)
  end

  def test_it_exists
    assert_instance_of Batter, @batter
  end

  def test_it_has_a_type
    assert_equal "Chocolate", @batter.type
  end

  def test_has_an_id
    assert_equal "1002", @batter.id
  end
end
