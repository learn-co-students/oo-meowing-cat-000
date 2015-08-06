require_relative 'spec_helper'
require_relative '../lib/meowing_cat'
require_relative '../lib/box'

describe "Cat" do
  let(:maru) {Cat.new}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  it 'instantiates a new cat' do
    expect(maru).to be_a(Cat)
  end

  it 'has a name' do
    maru.name = "Maru"
    expect(maru.name).to eq("Maru")
  end

   it "is able to meow" do

    # STDOUT is a constant that ruby defines for you
    # that represents 'output' so that you can test
    # against puts and Input/Output (IO) methods
    expect(STDOUT).to receive(:puts).with("meow!")
    maru.meow
  end
end

describe "Box" do
 let(:fedex) {Box.new}

  it "instantiates a new Box class" do
    expect(fedex).to be_a(Box)
  end

  it "has a size" do
    fedex.size = 10
    expect(fedex.size).to eq(10)
  end

end

describe "Box meets Cat" do

  let(:maru) {Cat.new}
  let(:fedex) {Box.new}

  it "can fit in the box if the size is right" do
    maru.size = 4
    fedex.size = 4
    expect(STDOUT).to receive(:puts).with("Meow, I'm in the box!")
    maru.get_in_box(fedex)
  end

  it "cannot fix in the box if the size isn't right" do
    maru.size = 5
    fedex.size = 2
    expect(STDOUT).to receive(:puts).with("Meow, can't fit in that box!")
    maru.get_in_box(fedex)
  end


end









