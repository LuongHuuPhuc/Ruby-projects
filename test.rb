#puts hiển thị giá trị ở mỗi dòng mới
#print sẽ hiển thị theo kiểu mảng hay nil tốt hơn puts 
def Say
  puts "Xin chao"
end
Say() # Hien thi xin chao
def hello(name)
  puts "Hello #{name}"
end
hello("Phuc")

#Cau lenh if-else   
x = 20
if x > 10
  puts "x lon hon 10"
end

def func(a)
  puts "nhap so dau vao #{a}"
   if a > 10 
    puts "Thoa man"
   elsif a < 0
     puts "So am"
  else 
    puts "Khong thoa man"
  end
end
puts "Vui long nhap mot so: "
a = gets.chomp.to_i #nhan dau vao roi chuyen sang so nguyen 
func(a)

#Cau lenh Unless 
#Cau lenh "a khac 0" luon duoc thuc thi tru khi thoa man a = 0
a = 1 
unless a == 0
  print "a khac 0\n"
end

#Cau lenh Case
puts "Facebook, Google, Youtube, SlideShare"
puts "Vui long nhap mot trang web"
site = gets.chomp 
case site 
when "Google"
  puts "Trang tim kiem"
when "Facebook"
  puts "Trang mang xa hoi"
when "Youtube"
  puts "Trang chia se Video Clip"
when "SlideShare"
  puts "Trang chia se Slide"
else 
  puts "Website khac"
end

#Vong lap While
counter = 0;
while counter < 5
  puts "Gia tri cua bien counter la: #{counter}"
  counter += 1 # Tang gia tri cua bien counter len 1 dvi 
end
#Cac viet khac cua vong lap While 
begin 
  puts "Gia tri cua bien counter la #{counter += 1}"
end while counter > 5

#Vong lap for
for i in 0..5
  puts "Gia tri cua bien i la: #{i}"
end 

#Vong lap each va Blocks
#Lap qua tung don vi trong pham vi va gan gia tri lap nay cho bien counter va hien thi man hinh
(1..5) each do |counter|
  puts "Gia tri cua counter: #{counter}"
end

#Vong lap Until
def untilLoop(counter)
  until counter > 5 do
    puts ("Gia tri cua bien counter la #{counter +=1}")
  end
end
print "Vui long nhap so: "
counter = gets.chomp.to_i
untilLoop(counter)

# counter = 0 
until counter > 5 do 
  puts ("Gia tri cua bien counter la #{counter += 1}")
end

#Break va next
#Break dung de cham dut vong lap

for i in 0..5
  if i > 2 then 
    break
  elsif i <= 2 then 
    next
  end
  puts "Gia tri cua bien i la #{i}"
end

#Kieu du lieu 
#1. Chuoi (string)

string_1 = "Ruby"
string_2 = 'Ruby'
puts string_1 == string_2 # true
puts string_1 == string_2 

#Dem chuoi ky tu
string = "Ruby"
puts string.length

#in hoa in thuong

string = "Ruby"
puts = string.downcase #Hien thi: ruby
puts = string.upcase #Hien thi: RUBY

#De thay doi chuoi ban dau, them ky tu ! vao sau phuong thuc
puts = string.downcase! #Hien thi:ruby
puts string #Hien thi ruby
puts = string.upcase! #Hien thi RUBY
puts string #Hien thi RUBY

#2. Symbol
#là một kiểu dữ liệu đặc biệt được sử dụng để biểu diễn các giá trị bất biến và duy nhất.
#Symbol có hiệu suất cao hơn chuỗi (string) trong các trường hợp so sánh hoặc khi cần các giá trị cố định
#Bởi vì chúng được lưu trữ và tái sử dụng trong bộ nhớ.
symbol_with_space = :"hello world"
symbol_with_space_chars = :"@special_symbol"
puts symbol_with_space  
puts symbol_with_space_chars
#Chuyen tu chuoi sang symbol
str = "my_string"
sym = str.to.sym
puts sym 

#3. Mang Array
numbers = [1,2,3,4,5]
arr = [1,"ruby",false] #Cac kieu du lieu khac nhau
puts numbers[0] 
puts numbers[3]
puts numbers[-1] #Phan tu o cuoi mang
puts numbers[2,2] #Bat dau o phan tu thu 2 va lay ra 2 phan tu
puts numbers[1..3] #Lay phan tu thu 1 den thu 3
puts numbers.length #Dem so phan tu trong mang
puts numbers.include?(3) #Kiem tra xem mang co chua gia tri 3 hay khong bang .include?()

#4. Pham vi (RANGE)
range_1 = 1..5 
print range_1.to_a #to_a la chuyen ve dang chuoi Array
range_2 = 1...5 #Range 1...5 ko bao gom gia tri cuoi 5
puts range_2.to_a 
range_3 = 'a'..'e'
print range_3.to_a 
puts range_3.size #Tra ve so luong phan tu trong range

#Dung buoc nhay trong Range
(1..10).step(2) do |i|
  print i, " "
end #Output:1,3,5,7,9
#Hoac cu phap khac:
1.step(10,2) do |i| #Day gom 10 so, bat dau tu 1, buoc nhay la 2
  print i, " "
end

#5. Hash 
#Trong Ruby, kiểu dữ liệu hash tương tự như mảng với giá trị khoá có thể là 1 chuỗi, 1 số hay một đối tượng object thay vì số.
#Cu phap cua hash: hash[_name_] 
hash = {"color"=> "Green", "number"=>100, 0 => "blue"}
#phien ban ruby 1.9 tro len, chung ta co the viet doan ma theo cau truc ngan gon hon:
hash = {color: "Green", number:"100" }
puts "#{hash['color']}"
puts "#{hash['number']}"
puts "#{hash[0]}"

#Symbol trong Hash
person = {
  name: "Alice",
  age : 30,
  city: "Wonderland"  
}

puts person[:name] #Output:Alice
puts person[:age] #Output:30
puts person[:city] #Output:Wonderland 

#Range, Array va Hash
array = (1..5).to_a
puts array.inspect #Output [1,2,3,4,5]
hash = {a:1, b:2, c:3, d:4, e:5}
range = :a..:c
sub_hash = hash.select {|k,v|range.include?(k)}
#.select: Chọn các key_value của hash dựa trên phạm vị range đã tạo
puts sub_hash.inspect  # Output: {:a=>1, :b=>2, :c=>3}
#.inspect: Trả về chuỗi biểu diễn của sub_hash 

