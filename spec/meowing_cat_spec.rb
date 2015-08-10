require_relative 'spec_helper'
require_relative '../lib/meowing_cat'
require_relative '../lib/box'

describe "Cat" do
  let(:maru) {Cat.new}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  it 'instantiates a new dog' do
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
  
  it 'can get into boxes' do
    maru.size = 3
	big_box = Box.new
	big_box.size = 3
	expect(STDOUT).to receive(:puts).with("Meow! I'm in the box!")
	maru.get_in_box(big_box)
  end
  
  it 'cannot get into small boxes' do
    maru.size = 3
	small_box = Box.new
	small_box.size = 1
	expect(STDOUT).to receive(:puts).with("Sad meow. I'm not in the box")
	maru.get_in_box(small_box)
  end	
end

describe Box do
  it 'exists' do
    expect{Box.new}.not_to raise_error
  end
  
  it 'can have size' do
    box = Box.new
    box.size = 2
    expect(box.size).to eq(2)
  end	
end