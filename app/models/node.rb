class Node
  attr_accessor :id, :distance, :connections, :visited

  def initialize(id, distance = 1.0/0.0, visited = false)
    @id = id
    @distance = distance
    @connections = {}
    @visited = visited
  end
end
