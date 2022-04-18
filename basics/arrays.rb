#teeb array kus on asjad sees
num_array = Array(0..9)
puts "#{num_array}"

#teeb tühja array max suurusega 10 (inclusive)
array2 = Array.new(10)

#täidan elementidega
for i in 0..array2.size
  array2[i]=i
end
puts "#{array2}"

#muudad x kohas elementi
array2[4] = 100
puts "array mod:#{array2}"

#alternatiiv viis teha juba filled array
array3 = [1,2,3,4]
puts "#{array3}"

#2d array
twoD = [[1,2,3],[4,5,6]]
puts "#{twoD}"

#modifying 2d array
#muudab esimeses arrays teise arvu (0 indexed)
twoD[0][2] = 100
puts "#{twoD}"

#dünaamilise suurusega array
x = 10
y = 20

#1d dynamical array on lihtne
dArray1 = Array.new(x)
puts "#{dArray1.size()}"

dArray2 = Array.new(x) {Array.new(y)}
puts "#{dArray2.size()},  #{dArray2[0].size()}"
