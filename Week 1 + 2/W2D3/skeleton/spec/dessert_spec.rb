require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:rocky) { Dessert.new('Icecream',100,chef)}
  let(:chef) { double("chef") }

  describe "#initialize" do

    it "sets a type" do
      expect(rocky.type).to eq('Icecream')
    end

    it "sets a quantity" do
      expect(rocky.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(rocky.ingredients).to be_kind_of(Array)
    end

    it "raises an argument error when given a non-integer quantity" do
      expect {Dessert.new("brownie","tons",chef)}.to raise_error(ArgumentError)
    end
  end



  describe "#add_ingredient" do
    
    it "adds an ingredient to the ingredients array" do
      rocky.add_ingredient("cream")
      expect(rocky.ingredients).to eq(["cream"])
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      # rocky.eat(50)
      # expect(rocky.quantity).to eq(50)
    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
      # expect
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
