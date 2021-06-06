  # utf-8 hatasina bir cozum bulamadigimdan cümleler.txt dosyasindaki tukrce karakterleri ingilizceye cevirdim kullanicidan veri alinan yerlerde turkce karakter kullanmadiginizda sikinti olmuyor hocam kodda.

   cumleler = File.read("cümleler.txt")

   cumlelerden_kelime = cumleler.split

   kuculmus_kelime = cumlelerden_kelime.map(&:downcase)

   tekrarsiz_dizi = kuculmus_kelime.uniq!

 hash = {}
    
    tekrarsiz_dizi.each_with_index do | anahtar , deger | 

    hash[anahtar] = deger+1

    end 

   puts "sozluk yapisi asagidaki gibidir: \n  "
   print "#{hash} \n"
   puts " "

   print "bir cumle giriniz (Turkce karakter ve buyuk harf kullanmamaya dikkat ediniz) : "  
   oov = gets.chomp.split 
   puts " "

   m = 0  

   while m < oov.size

       if  hash.key? oov[m]

         print "sozlukte olan kelime/kelimeler girdiniz. \n"
         puts " " 

       else

          print "sozlukte olmayan kelime/kelimeler girdiniz onlarin hepsi oov key'ine kaydedildi.\n"
          print "asagida sozlugun guncel hali bulunmakta:\n"
          
          puts " "

          hash["oov"] = "48"         
          print "#{hash}\n"

          puts " "
       break

       end

   m+=1

   end

 sadece_cumle = File.readlines("cümleler.txt")

 kucuk = sadece_cumle.map(&:downcase)

  print "cumlelerin vektorleri asagidaki gibidir : \n"
  puts " "

   kucuk.each do |e| 

      j = e.split 
      print "#{j} ->> "

        j.each do |m|
         
           if hash.key? m
              
             print "#{hash[m]} "
           
           else

            print "#{hash["oov"]} "
        
           end

        end

 print "\n"

      end

 puts " "

 print "vektorlestirilecek cumlenizi giriniz: (Turkce karakter ve buyuk harf kullanmamaya dikkat ediniz)  "

 vektor = gets.chomp.split 
 kucuk_vektor = vektor.map(&:downcase)

 dizi = []

   kucuk_vektor.each do |v|
     y = v.split 

         y.each do |c| 

            if hash.key? c

             dizi << hash[c]
   
            else

            dizi << hash["oov"]
               
            end

         end 
   end
   print "#{kucuk_vektor} -> #{dizi}" 