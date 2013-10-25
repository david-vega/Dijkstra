class Node
  attr_accessor :id, :distance, :connections

  def initialize(id, distance = 1.0/0.0)
    @id = id
    @distance = distance
    @connections = []
  end
end
