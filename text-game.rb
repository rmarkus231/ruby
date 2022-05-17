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

$translate = {"defence":"kaitses",
            "strength":"tugevuses",
            "magic":"maagias",
            "perception":"laskmises",
            "pyss":"püssiga",
            "oda":"odaga",
            "kepp":"kepiga"
}

$translate2 = {"defence":"kaitset",
    "strength":"tugevust",
    "magic":"maagiat",
    "perception":"laskmist"
}

$stats = ["defence","strength","magic","perception"]

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
    if @time == "aeglane" or @time.to_i == 2
        @t = 2
    elsif time == "keskmine" or @time.to_i == 1
        @t = 1
    elsif @time.to_i == 0
        @t = 0
    else
        @t = 0
    end
    return @t
end

def getInput()
    @input = gets.chomp
    @input = @input.to_i
    return @input
end


#pooleli
def getSkill(t = 0)
    @skill = Hash.new
    x = 100
    @input
    #for i in $stats.size()
    #/\ broken stats.size()
    for i in 0..3

        #puts "$stats[i] #{$stats[i]}"
        #puts "translate #{$translate["defence"]}"
        #puts "$translate[$stats[i]] #{$translate[$stats[i]]}"
        #sleep 60
        #@temp = ":#{$stats[i]}"
        #puts "translate: #{$translate[:"#{$stats[i]}"]}"

        if x == 0
            puts "ma #{$translate2[:"#{$stats[i]}"]} üldse ei osanud: 0"
            @skill[:"#{i}"] = 0
        else
            puts "Sul on #{x} skillpointi jagada"
            sleep t
            puts "Ma olin vist #{$translate[:"#{$stats[i]}"]} nii hea:"
            @input = getInput()
            sleep t
        end

        if x < @input
            begin
                puts "Peab olema väiksem kui olemasolevad punktid: "
                @input = getInput()
                sleep t
            end while x < @input
        else
            x-= @input
            @skill[:"#{i}"] = @input
        end
    end
    return @skill
end

time = getSpeed()


skill = getSkill(time)
puts skill

#player = CreatePlayer.new("peeter",10,10,10,10,10)

#player.showStatsPrint()
#wep = chooseWeapon(time)

#puts wep

#weapon = CreateWeapon.new(wep[0],wep[1],wep[2],wep[3])
#weapon = CreateWeapon.new("relv",10,10,10)

#weapon.printStats()

sleep 60
