print "dort basamakli sayinin ilk rakamini giriniz: "
ilkrakam = gets.to_i

print "dort basamakli sayinin ikinci rakamini giriniz:"
ikincirakam = gets.to_i

print "dort basamakli sayinin ucuncu rakamini giriniz: "
ucuncurakam = gets.to_i

print "dort basamakli sayinin dorduncu rakamini giriniz: "
dorduncurakam = gets.to_i

print "\n" 
ABCD = ("#{ilkrakam}#{ikincirakam}#{ucuncurakam}#{dorduncurakam}").to_i

print "girilen sayi:#{ilkrakam}#{ikincirakam}#{ucuncurakam}#{dorduncurakam}"
print ",ikiye ayrilmis durumda #{ilkrakam}#{ikincirakam} ve #{ucuncurakam}#{dorduncurakam} ,\n"

AB = "#{ilkrakam}#{ikincirakam}"
CD = "#{ucuncurakam}#{dorduncurakam}"

x = AB.to_i + CD.to_i 
print "ikiye ayrilmis sayilarin toplami:#{x} olmaktadir."

if x*x == ABCD
    print "Sayiniz koksal sayidir" 
else 
    print "Sayiniz koksal sayi degildir"
end
