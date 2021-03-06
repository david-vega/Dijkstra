require 'spec_helper'

describe Node do
  it 'creates a node with a name an a default distance value' do
    node = Node.new 'foo'
    node.id.should == 'foo'
    node.distance.should == 1.0/0.0
    node.connections.should == {}
    node.visited.should == false
  end

  it 'creates the initial node' do
    node = Node.new 'foo', 0, true
    node.id.should == 'foo'
    node.distance.should == 0
    node.visited.should == true
  end
end
