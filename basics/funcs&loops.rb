#basic while loops
def while1(var = 0, num = 5)
  puts "loop1"
  while var < num do
    #converts int to string
    puts "var = " + var.to_s
    var +=1
  end
end

#does 1 loop 1st and then checks for condition
def while2(var = 0, num = 5)
  puts "loop2"
  begin
  puts "var = #{var}"
  var +=1
  end while var < num
end

#for loops
def for1
  puts "for1"
  for i in 0..3 
    puts "i = #{i}"
  end
end

def forifbreak
  puts "for2"
  (0..10).each do |i|
    puts "i = #{i}"
    if i > 3 then
      #you can also use redo in if statements
      break
    end
  end
end

def errorhandle
  puts "errorhandle"
  #string variable to use as int
  var = "0"
  begin
    puts var
    var+=1
  rescue
    puts "handling error"
    var = var.to_i
    var+=1
  end while var < 5
end
  
while1
while2
for1
forifbreak
errorhandle
