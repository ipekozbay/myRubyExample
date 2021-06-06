kelimeler = File.readlines("kelimeler.txt")

 i = 0
 hash_ing = {}
 hash_turk = {}

   while i < kelimeler.size      
    kelime_s = kelimeler[i].split 

    kelime_s.delete(":")
   
     ing_kelime = kelime_s[0]

    kelime_s.shift
    turk_kelime = kelime_s.join(" ")
   
     hash_ing[ing_kelime] = turk_kelime
     hash_turk[turk_kelime] = ing_kelime
   
    i+=1
   end

 secenekler =[]
 cevaplar = []
 yanlis_sorular = []
 dogru_cevap = []
 puan = 0

 puts "Hangi dilde kelime bilgi seviyenizi ölcmek istersiniz ?"
 puts  "  1 = ingilizce-turkce " 
 puts  "  2 = turkce-ingilizce "

 print "secim:"
 dil = gets.chomp.to_i
 puts " "

    if dil == 1 
    
      k = 1
      while k < 5

        key_i = hash_ing.keys[rand(hash_ing.size)]

        puts "soru #{k}) #{key_i.capitalize} kelimesinin turkce anlami nedir ?"

       x = hash_ing[key_i]                       # dogru cevap    
         hash_ing.delete(key_i)                  # şıklarda aynı kelimeler denk gelmesin diye bir önceki  şıktaki kelimeyi hashten sildik.
            
       y = hash_ing.values[rand(kelimeler.size)]
         hash_ing.delete(y)

       z = hash_ing.values[rand(kelimeler.size)]
          hash_ing.delete(z)

       t = hash_ing.values[rand(kelimeler.size)]
          hash_ing.delete(t)

       secenekler.push(x,y,z,t)

       karisik_secenek = secenekler.shuffle

       secenekler.delete(x)                    # 2.soruya gecerken hafizada 1.sorunun cevaplari depolaniyordu bu sorunu engellemek icin burada diziyi temizledik.
       secenekler.delete(y) 
       secenekler.delete(z)
       secenekler.delete(t)

       t = karisik_secenek[0]
       y = karisik_secenek[1]
       u = karisik_secenek[2]
       r = karisik_secenek[3]

       puts "A) #{karisik_secenek[0]}"
       puts "B) #{karisik_secenek[1]}"
       puts "C) #{karisik_secenek[2]}"
       puts "D) #{karisik_secenek[3]}"
      
       print "CEVAP = "
       cevap = gets.chomp.upcase 

       cevaplar << cevap
       puts " "

          if t == x && cevap == "A"
            puan+=25 
           
          elsif y == x && cevap == "B"  
            puan+=25

          elsif u == x && cevap == "C"  
            puan+=25

          elsif r == x && cevap == "D"
            puan+=25

          else 
             yanlis_sorular << k
             dogru_cevap << x

          end
             
         k+=1
      end

       puts "sonuc : test sonucunda #{puan} aldiniz."
       print "yanlis yapilan sorular : "
      
        yanlis_sorular.each do | f | 
          print "#{f} "
        end
   puts " "
   puts "yanlis sorularin cevaplari: "

       if dogru_cevap.empty?

        print "yanlis sorunuz yoktur.tebrikler"

      end

     if yanlis_sorular.size == 1
     print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} " 
 
     elsif yanlis_sorular.size == 2
      print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} \n"
      print  "#{yanlis_sorular[1]}.sorunun cevabi:#{dogru_cevap[1]} "
    
     elsif yanlis_sorular.size == 3
      print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} \n"
      print "#{yanlis_sorular[1]}.sorunun cevabi:#{dogru_cevap[1]} \n"
      print "#{yanlis_sorular[2]}.sorunun cevabi:#{dogru_cevap[2]} "

     elsif yanlis_sorular.size == 4 
       print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} \n"
       print "#{yanlis_sorular[1]}.sorunun cevabi:#{dogru_cevap[1]} \n"
       print "#{yanlis_sorular[2]}.sorunun cevabi:#{dogru_cevap[2]} \n"
       print "#{yanlis_sorular[3]}.sorunun cevabi:#{dogru_cevap[3]} "

   end

  else

      k = 1
      while k < 5

         key_t = hash_turk.keys[rand(hash_turk.size)]

        puts "Soru #{k}) #{key_t.capitalize} kelimesinin turkce anlami nedir ?"

         x = hash_turk[key_t]          
         hash_turk.delete(key_t) 
      
         y = hash_turk.values[rand(kelimeler.size)]
        hash_turk.delete(y)

        z = hash_turk.values[rand(kelimeler.size)]
        hash_turk.delete(z)

        t = hash_turk.values[rand(kelimeler.size)]
        hash_turk.delete(t)

        secenekler.push(x,y,z,t)

      karisik_secenek = secenekler.shuffle

        secenekler.delete(x)  
        secenekler.delete(y)
        secenekler.delete(z)
        secenekler.delete(t)

      t = karisik_secenek[0]
      y = karisik_secenek[1]
      u = karisik_secenek[2]
      r = karisik_secenek[3]

     puts "A) #{karisik_secenek[0]}"
     puts "B) #{karisik_secenek[1]}"
     puts "C) #{karisik_secenek[2]}"
     puts "D) #{karisik_secenek[3]}"

    print "CEVAP = "
    cevap = gets.chomp.upcase 
    cevaplar << cevap
    puts " "

    if t == x && cevap == "A"
      puan+=25 
     
    elsif y == x && cevap == "B"  
      puan+=25

    elsif u == x && cevap == "C"  
      puan+=25

    elsif r == x && cevap == "D"
      puan+=25

    else 
       yanlis_sorular << k
       dogru_cevap << x

    end
       
    k+=1
  end

 puts "sonuc : test sonucunda #{puan} aldiniz."
 print "yanlis yapilan sorular : "

    yanlis_sorular.each do | f | 
    print "#{f} "
    end
 
      puts " "
      puts "yanlis sorularin cevaplari:\n"

    if dogru_cevap.empty?

        puts "yanlis sorunuz yoktur.tebrikler"

    end

    if yanlis_sorular.size == 1
     print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} " 

    elsif yanlis_sorular.size == 2
     print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} \n"
     print  "#{yanlis_sorular[1]}.sorunun cevabi:#{dogru_cevap[1]} "

    elsif yanlis_sorular.size == 3
     print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} \n"
     print "#{yanlis_sorular[1]}.sorunun cevabi:#{dogru_cevap[1]} \n"
     print "#{yanlis_sorular[2]}.sorunun cevabi:#{dogru_cevap[2]} "

    elsif yanlis_sorular.size == 4 
     print "#{yanlis_sorular[0]}.sorunun cevabi:#{dogru_cevap[0]} \n"
     print "#{yanlis_sorular[1]}.sorunun cevabi:#{dogru_cevap[1]} \n"
     print "#{yanlis_sorular[2]}.sorunun cevabi:#{dogru_cevap[2]} \n"
     print "#{yanlis_sorular[3]}.sorunun cevabi:#{dogru_cevap[3]} "

   end
  end
   


