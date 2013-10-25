require 'spec_helper'

describe Graph do
  it 'creates an empty graph' do
    graph = Graph.new
    graph.nodes.should == []
  end

  describe '#create_nodes' do
    it 'generates graph nodes' do
      graph = Graph.new
      graph.create_nodes 5
      graph.nodes.count.should == 5
    end
  end

  describe '#graph_generator' do
    it 'creates a fully functional graph' do
      graph = Graph.new
      graph.default_graph
      graph.nodes.count.should == 6
      graph.nodes[1].connections.should == { '1' => '7', '3' => 10, '4' => 15}
      graph.nodes[0].visited.should == true
      graph.nodes[0].distance.should == 0
    end
  end

  describe '#generate_connections' do
    it 'set default connections and distances to the nodes ' do
      graph = Graph.new
      graph.create_nodes 6
      graph.generate_connections
      graph.nodes[2].connections.should == { '1' => '9', '2' => 10, '4' => 11, '6' => 2 }
      graph.nodes[5].connections.should == { '1' => '14', '3' => 2, '5' => 9 }
    end
  end
end
