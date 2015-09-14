require_relative './box.rb'
class Cat

  attr_accessor :name, :size

  def meow
    puts "meow!"
  end

  def get_in_box(box)
    if box.size < self.size
      puts "Sad meow, I'm not in the box"
    else
      puts "Meow!, I'm in the box"
  end
end

maru = Cat.new
maru.size = 23

fedex_box = Box.new
fedex_box.size = 3

maru.get_in_box(fedex_box)
end