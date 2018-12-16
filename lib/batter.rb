class Batter
  attr_reader :type, :id
  def initialize(batter_data)
    @type = batter_data["type"]
    @id = batter_data["id"]
  end
end
