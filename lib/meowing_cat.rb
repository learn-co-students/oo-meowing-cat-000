

class Cat
  attr_accessor :name, :size

  def initialize
  end

  def meow
    puts "meow!"
  end

  def get_in_box(box_instance)
    if box_instance.size >= @size
      puts "Meow, I'm in the box!"
    else
      puts "Meow, can't fit in that box!"
    end
  end

  
end

