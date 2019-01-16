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
      expect {Dessert.new("brownie","tons")}.to raise_error('amount must be a number')
    end
  end



  describe "#add_ingredient" do
    before(:each)
    it "adds an ingredient to the ingredients array" do
      expect(rocky.add_ingredient("cream"))
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
