class Graph
  attr_accessor :nodes

  def initialize
    @nodes = []
  end

  def default_graph
    create_nodes 6
    generate_connections
  end

  def create_nodes int
    @nodes << Node.new(1, 0, true)
    (int-1).times { |i| @nodes << Node.new(i+1) }
  end

  def generate_connections
    @nodes[0].connections ={ '2' => '7', '3' => 9, '6' => 14 }
    @nodes[1].connections = { '1' => '7', '3' => 10, '4' => 15 }
    @nodes[2].connections = { '1' => '9', '2' => 10, '4' => 11, '6' => 2 }
    @nodes[3].connections = { '2' => '15', '3' => 11, '5' => 6 }
    @nodes[4].connections = { '4' => '6', '6' => 9 }
    @nodes[5].connections = { '1' => '14', '3' => 2, '5' => 9 }
  end
end
