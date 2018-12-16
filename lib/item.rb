require_relative './reader.rb'
require 'json'
require 'pry'
require_relative 'batter'
require_relative 'topping'

class Item
  def initialize(cronut_data)
    @cronut_data =  Reader.new.read_data["items"]["item"][0]
  end

  def ppu
    @cronut_data["ppu"]
  end

  def id
    @cronut_data["id"]
  end

  def type
    @cronut_data["type"]
  end

  def name
    @cronut_data["name"]
  end

  def batters
    @cronut_data["batters"]["batter"].map do |batter_data|
      Batter.new(batter_data)
    end
  end

  def toppings
    @cronut_data["topping"].map do |topping_data|
    Topping.new(topping_data)
    end
  end
end
