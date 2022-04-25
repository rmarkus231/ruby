#hash on nagu array aga selle asemel, et asi oleks näiteks positsioonil 3 võib positsiooniks olla mis iganes key, i.e string

h = Hash.new

#hashi uute väljade lisamine, hashi printides näed asju nende loomise järjekorras
h[:sõna] = "teine sõna"

#string key'na kasutades peab kasutaba ":" aga integeriga ei tohi
h[1] = "tere"

h[:kolm] = 3

puts "#{h[:kolm]}"
puts "#{h[1]}"
puts "#{h}"

#saad teha ka ette täidetud hash
h2 ={üks:1, kaks:2, kolm:3}
puts "h2:#{h2}"
