=begin
def savePlayer(name = "",def = 0,str = 0,mag = 0,per = 0,hp = 0)
    puts "fuck"
    sleep 10
    open('saves.txt', 'a+') { |@s|
        @s << "#{name}\n"
        @s << "#{def}\n"
        @s << "#{str}\n"
        @s << "#{mag}\n"
        @s << "#{per}\n"
        @s << "#{hp}\n"
    }
    puts "Character saved to file."
end
=end
skills{1:10}

puts skills
sleep 100
#savePlayer("Peeter",skill[0],skill[1],skill[2],skill[3],20)