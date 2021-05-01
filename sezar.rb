print "enter number:"
n=gets.chomp.to_i
metin =File.read("metin.txt")
    def sifre (eleman, sayi)
       bos = ""
       eleman.scan(/./) do |k|
          if ("a".."z").include? (k.downcase)
            sayi.times {k = k.next}
          end
          bos << k[-1]
        end
        return bos
      end
     i= sifre( metin, n%26 ) 
     print "#{i}\n\n"
    sifre = File.write("sifre.txt",i) 

