# class MathHelper
#   def square(x) #Instance Method 
#     x * x 
#   end 

#   def self.pi  #Class Method 
#     3.145926535
#   end
# end

# obj = MathHelper.new
# puts obj.square(5) #Goi instance method tren object
# puts MathHelper.pi #Goi class method tren class 

# puts self #=> main

class House 
  @@count = 0 #Bien toan cuc count chi thuoc ve class House 
  # puts self #=> House
  # attr_reader :color, :size, :floor #define reader method
  # attr_writer :color 
  attr_accessor :color, :style

  def self.count #Class Method, khong the goi trong object 
    @@count
  end 

  def self.report_count_of_instances
    "There are #{self.count} of instances of the #{self.name} class "
  end

  #Method
  def initialize(color, style)
    @color = color #@ bieu thi instance variable (thuoc tinh) trong class, chi thuoc ve object color
    @style = style  
    @@count += 1
    # puts self #=> #<House:0x000001d3c1a16ad0>
  end

  def details
    "This house is a #{color} and #{style} house instance"
  end

  #Method 
  # def color 
  #   @color 
  # end 

  # def change_color=(new_color) #Phai viet gan nhau
  #   @color = new_color
  # end 
end 

puts House.report_count_of_instances
puts House.count #Correct! => 0

house = House.new("blue", "craftman")
print house.color 
print ","
puts house.style 
puts house.details

house.color = ("purple")
house.style = ("gay")
print house.color
print ","
puts house.style
puts house.details

# puts house.count #Wrong !
puts House.count #=>1
