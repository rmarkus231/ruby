#bringing back the classic


class createWeapon
    
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

class ClassName
    def initialize(name,s,d,m,per,h)
        @name = name
        @defence = d
        @strength = s
        @magic = m
        @perception = per
        @hp = h
    end
end

