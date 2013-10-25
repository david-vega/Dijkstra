class Node
  attr_accessor :name, :distance

  def initialize(name, distance = 1.0/0.0)
    @name = name
    @distance = distance
  end
end
