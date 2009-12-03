Given /^the following setup$/ do |table|
  # table is a Cucumber::Ast::Table
  @grid = GameOfLife::Grid.new(table.raw)
end

When /^I evolve the board$/ do
  @game = GameOfLife::Game.new(@grid)
  @game.evolve!
end

Then /^the center cell should be dead$/ do
  @game.grid[1,1].should == "."
end

Then /^the center cell should be alive$/ do
  @game.grid[1,1].should == "x"
end

Then /^I should see the following board$/ do |table|
  # table is a Cucumber::Ast::Table
  pending
end
