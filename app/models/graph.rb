class Graph
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def graph_generator
 

  end

  def create_nodes int
    (int-1).times { |i| @nodes << Node.new(i+1) }
    @nodes << Node.new(1)
  end
end
