# print "kac tur oynayacaksiziniz? "
tur = gets.chomp.to_i
# puts "KURALLAR : tas makasi yener / tas kagida yenilir / makas kagidi yener "
# puts "R = tas(rock) "
# puts "P = paper(kagit) "
# puts "S = makas (scissors) "
game = gets.chomp.split(//)

i = 0 
while i < game.size 

if game[i] == game[i+1]

puts "Draw"
end
 if  game [i] == "R"

         if game [i+1] == "P"
             puts "Dcoder"
         elsif  game[i+1] == "S"
            puts "Dcoder"
          end


 elsif game[i] == "P"
         
        if game[i+1] == "R"
           puts "Dcoder"
        elsif game [i+1] == "S"
            puts "You"
        end


 elsif game [i] == "S"
    
      if game [i+1] == "P"
        puts "You"
      elsif game [i+1] == "R" 
        puts "You"
      end

end

i+=2
end