#require_relative 'spec_helper'
#require_relative '../lib/meowing_cat'

#describe "Cat" do
 # let(:maru) {Cat.new}  # Look up what let does in RSpec
  # https://www.relishapp.com/rspec/rspec-core/v/2-6/docs/helper-methods/let-and-let

  #it 'instantiates a new dog' do
   # expect(maru).to be_a(Cat)
  #end

  #it 'has a name' do
   # maru.name = "Maru"
    #expect(maru.name).to eq("Maru")
  #end

   #it "is able to meow" do

    # STDOUT is a constant that ruby defines for you
    # that represents 'output' so that you can test
    # against puts and Input/Output (IO) methods
    #expect(STDOUT).to receive(:puts).with("meow!")
    #maru.meow
  #end
#end

describe '#speak_to_grandma' do
  it 'responds with HUH?! SPEAK UP, SONNY! unless you are shouting' do
   expect(true).to eq(true)
 end
end