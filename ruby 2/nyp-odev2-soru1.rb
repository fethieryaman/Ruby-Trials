class Personel
	attr_accessor :ad,:soyad,:unvan,:yas
	def initialize(ad,soyad,unvan,yas)
		@ad=ad
		@soyad=soyad
		@unvan=unvan
		@yas=yas
	end
end

class Araç 
	attr_accessor :kisi,:marka,:model,:plaka,:kilometre,:renk

	def to_s
		<<-KÜNYE
		Adı      : #{kisi.ad}
		Soyadı   : #{kisi.soyad}
		Unvanı   : #{kisi.unvan}
		Yaşı     : #{kisi.yas}
		Arabası  : #{marka} #{model}
		Plaka    : #{plaka}
		Renk     : #{renk}
		Kilometre: #{kilometre}
		KÜNYE
    end
end

a = Araç.new 
a.kisi = Personel.new("Durmus Ozkan", "Sahin", "Arastırma Gör.", 26) 
a.marka ="Renault"
a.model ="Fluence" 	
a.plaka ="34 DB 812"
a.renk ="Beyaz"
a.kilometre =114000
puts a

