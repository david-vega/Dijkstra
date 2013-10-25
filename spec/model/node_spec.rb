require 'spec_helper'

describe Node do
  it 'creates a node with a name an a default distance value' do
    node = Node.new 'foo'
    node.name.should == 'foo'
    node.distance.should == 1.0/0.0
  end
end