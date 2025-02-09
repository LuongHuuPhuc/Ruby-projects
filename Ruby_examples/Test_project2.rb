#Cong tong n so 
print "Nhap so n: "
n = gets.chomp.to_i

$sum = 0  # Biến toàn cục

def decrease(n)
  # sum = 0
  n.downto(0) do |i|
    $sum += i  # Sử dụng biến toàn cục
  end
  # return sum
end

# result = decrease(n)
# print "Tong tu #{n} den 0 la: #{result}"
decrease(n)
print "Tong tu #{n} den 0 la: #{$sum}"
