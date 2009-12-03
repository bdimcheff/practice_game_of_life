require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

def build_grid(str_array)
  ary = str_array.map { |r| r.split("") }
  GameOfLife::Grid.new(ary)
end

describe GameOfLife::Grid do
  
  context "neighbors" do
    
  it "empty grid" do
    g = build_grid(%W[
      ...
      ...
      ...
      ])
    g.neighbors(1,1).should == 0
  end
  
  it "grid 1 cell alive" do
    g = build_grid(%W[
      ...
      ..x
      ...                      
      ])
    g.neighbors(1,1).should == 1
  end
  
  end
end
