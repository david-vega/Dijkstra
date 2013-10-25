require 'spec_helper'

describe Graph do
  it 'creates an empty graph' do
    graph = Graph.new
    graph.nodes.should == []
  end

  describe '#'
    it 'generates a graph with nodes' do
      graph = Graph.new
      graph.create_nodes 5
      graph.nodes.count.should == 5
    end
end
