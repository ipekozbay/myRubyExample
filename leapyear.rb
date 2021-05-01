print "number of attempts"
k=gets.chomp.to_i
t=0

while t < k
    t+=1

    year=gets.chomp.to_i

    if year%4==0 && 1000 <= year &&  year <= 100000
        puts "yes"

    elsif  year%4!=0 && 1000 <=year  && year <= 100000
        puts "no"

    else    

    end
end
