#bringing back the classic

time = 0

class CreateWeapon
    
    def initialize(name,m,s,p)
        @name = name
        @magicDamage = m
        @strengthDamage = s
        @perceptionDamage = p
    end

    def showStats()
        stats = {name:name, md:magicDamage, sd:strengthDamage}
        return stats
    end

    def printStats()
        puts "Nimi: #{@name}"
        puts "Magic damage: #{@magicDamage}"
        puts "Strength damage: #{@strengthDamage}"
        puts "Ranged damagee: #{@perceptionDamage}"
    end
end

def chooseWeapon(t = 0)
    puts "Sinu ees maas on kolm relva.."
    sleep t
    begin
        puts "Millise relva valid? (pyss/oda/kepp): "
        weapon =gets.chomp
        sleep t
        if weapon == "pyss"
            puts "Valisid pyssi"
            @n = "pyss"
            @m = 0
            @s = 10
            @p = 100
        elsif weapon == "oda"
            puts "Valisid oda"
            @n = "oda"
            @m = 10
            @s = 100
            @p = 10
        elsif weapon == "kepp"
            puts "Valisid keppi"
            @n = "kepp"
            @m = 100
            @s = 10
            @p = 20
        elsif weapon == "devmode"
            puts "<<entered development mode>>"
            @n = "devmode"
            @m = 100
            @s = 100
            @p = 100
        else
            @n = "rescue"
        end
    end if @n != "rescue"

    @r = [@n,@m,@s,@p]
    sleep t
    return @r
end

translate = {"defence":"kaitses",
            "strength":"tugevuses",
            "magic":"maagias",
            "perception":"laskmises",
            "pyss":"püssiga",
            "oda":"odaga",
            "kepp":"keppiga"
}

stats = ["defence","strength","magic","perception"]

class CreatePlayer
    def initialize(name,s,d,m,per,h)
        @name = name
        @defence = d
        @strength = s
        @magic = m
        @perception = per
        @hp = h
    end

    def showStatsPrint()
        puts "Tegelane: #{@name}"
        puts "Kaitse: #{@defence}"
        puts "Tugevus: #{@strength}"
        puts "Maagia: #{@magic}"
        puts "Täpsus: #{@perception}"
    end

    def showStats(num = nil)
        if num == nil
            @r = [@name,@defence,@strength,@magic,@perception,@hp]
        elsif num == 1
            @r = @name
        elsif num == 2
            @r = @defence
        elsif num == 3
            @r = @strength
        elsif num == 4
            @r = @magic
        elsif num == 5
            @r = @perception
        elsif num == 6
            @r = @hp
        else
            @r = ["missingNO",100,100,100,100,100]
        end
        return @r
    end

end

def getSpeed()
    puts "kui kiiresti tahad, et mäng liiguks: aeglane\\keskmine\\kiire"
    @time = gets.chomp
    time = @time.downcase
    if @time == "aeglane"
        @t = 2
    elsif time == "keskmine"
        @t = 1
    else
        @t = 0
    end
    return @t
end

time = getSpeed()

player = CreatePlayer.new("peeter",10,10,10,10,10)

player.showStatsPrint()
wep = chooseWeapon(time)

puts wep[1]

#weapon = CreateWeapon(wep[0],wep[1]wep[2],wep[3])

#wep.printStats()

sleep 60
