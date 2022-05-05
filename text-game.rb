#bringing back the classic


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
end

def chooseWeapon()
    puts "Sinu ees maas on kolm relva.."
    begin
        puts "Millise relva valid? (pyss/oda/kepp): "
        weapon =gets.chomp
        if weapon == "pyss"
            @n = "pyss"
            @m = 0
            @s = 10
            @p = 100
        elsif weapon == "oda"
            @n = "oda"
            @m = 10
            @s = 100
            @p = 10
        elsif weapon == "kepp"
            @n = "kepp"
            @m = 100
            @s = 10
            @p = 20
        elsif weapon == "devmode"
            @n = "devmode"
            @m = 100
            @s = 100
            @p = 100
        else
            @n = "rescue"
        end
    end if @n != "rescue"

    @r = [@n,@m,@s,@p]
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
            r = ["missingNO",100,100,100,100,100]
        end
        return @r
    end

end

player = CreatePlayer.new("peeter",10,10,10,10,10)

player.showStatsPrint()
wep = chooseWeapon()