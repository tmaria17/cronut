require "json"
require "pry"

class Reader
  def read_data
    data = File.read("./data/cronut.json")
    JSON.parse(data)
  end
end
