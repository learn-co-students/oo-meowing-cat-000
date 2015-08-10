class Cat
  attr_accessor :name, :size

  def meow
    puts "meow!"
  end

  def get_in_box(box)
    if @size <= box.size then 
	  puts "Meow! I'm in the box!"
	else
      puts "Sad meow. I'm not in the box"
	end  
  end
  
end

