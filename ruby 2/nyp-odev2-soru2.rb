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
	
	def Marka(other)
		@marka=other
	end
	
	def Model(other)
		@model=other
	end
	
	def Kilometre(other)
		@kilometre = other
	end
	
	def Renk(other)
		@renk = other
	end
	
	def Plaka(other)
		@plaka = other
	end
	

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
a.marka = a.Marka("Renault")
a.model = a.Model("Fluence")
a.plaka =a.Plaka("34 DB 812")
a.renk =a.Renk("Kırmızı")
a.kilometre =a.Kilometre(120000)
puts a

