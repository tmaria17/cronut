class Topping
  attr_reader :type,
              :id
  def initialize(topping_data)
    @type = topping_data["type"]
    @id = topping_data["id"]
  end
end
