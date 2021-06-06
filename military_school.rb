# Askeri sınavlara öğrenci kabulünde adayın yaşının 13 ve 17 aralığında (alt sınır ve üst sınır dahil) olması 
# ve vücut kütle indeksinin 18.50 – 24.99 aralığında (alt sınır ve üst sınır dahil) olması istenmektedir. 
# Vücut kitle indeksi, kilonun boyun metre cinsinden karesine bölünmesiyle bulunur. ( kilo / boy**2)

print "enter your age : "
age = gets.to_i

print "enter your weight:(kg) "
weight = gets.to_f

print "enter your height: (m)"
height = gets.to_f
print "\n"
printf " ***"
print "\n"

bodymassindex = (weight)/(height**2)

if bodymassindex <= 24.99 && bodymassindex >=18.50 &&  age <=17 &&  age>=13
    print "body mass index : #{bodymassindex} you are eligible for military high school."
    
else
    print "body mass index : #{bodymassindex} you are not eligible for military high school."
    
end

