print "vize notunuzu giriniz : "
vize = gets.to_f

print "quiz notunuzu giriniz : "
quiz = gets.to_f

print "devamlilik notunu giriniz : "
devamlilik = gets.to_f

print "final notunu girin : "
final = gets.to_f

print "******** \n"

ortalama = ((vize*30)/100 +(quiz*10)/100 + (devamlilik*10)/100 + (final*50)/100).to_f

   if ortalama < 60 
    print "ortalamaniz: #{ortalama} ve harf notunuz FF'dir " 
  
   elsif 60 <= ortalama and ortalama < 70
    print "ortalamiz : #{ortalama} ve harf notunuz DD'dir"

   elsif 70<= ortalama and ortalama < 80
      print "ortalamaniz : #{ortalama} ve harf notunuz CC'dir."
   
   elsif 80 <= ortalama and ortalama < 90 
      print "ortalamaniz: #{ortalama} ve harf notunuz BB'dir"  
   
   else 
      print "ortalamaniz: #{ortalama} ve harf notunuz AA'dir"  
   end
  