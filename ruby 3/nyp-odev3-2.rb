class Emlak
attr_reader :tip, :il, :odasayisi, :fiyat, :sayac, :t_fiyat
	@@sayac=0
	@@t_fiyat=0
	def initialize()
		@tip = tip
		@il = il
		@odasayisi = odasayisi
		@fiyat = fiyat
		@@sayac += 1
		@@t_fiyat
	end
	
	
	def EKLE
		puts "Emlak tipini giriniz:"
		@tip=gets.chomp
		puts "Emlağın bulunduğu ili giriniz:"
		@il = gets.chomp
		puts "Emlağın oda sayisini giriniz:"
		@odasayisi= gets.to_i
		puts "Emlağın fiyatını giriniz"
		@fiyat = gets.to_i
	end
	
	
	def CIKIS
		return "Güle Güle"
	end	
	
	
	def sayac
		return @@sayac
	end
	
	
	def portfoy
		return @@t_fiyat += fiyat 
	end
	
	
	def to_s
	<<-KÜNYE
		Emlak Tipi : #{tip}
		İl / Sehir : #{il}
		Oda Sayısı : #{odasayisi}
		Fiyat      : #{fiyat}
		KÜNYE
	end
end

x=TRUE 
dizi=[]
puts "OMU Emlak Ltd Şti'ye Hosgeldiniz"
while (x)
	puts "Komut Giriniz"
	komut = gets.chomp
	
	if (komut == "EKLE")
		nesne=Emlak.new
		nesne.EKLE
		dizi.push(nesne)
	elsif (komut == "LISTELE")
		puts "Toplam Emlak : #{nesne.sayac}" 
		for i in (0..((dizi.length)-1)) do
			puts dizi[i]
		end	
	    puts "Toplam Emlak Portföyü: #{nesne.portfoy}"
	elsif (komut == "CIKIS")
		nesne=Emlak.new
		puts nesne.CIKIS
		x=FALSE 
	else 
		puts "Hatalı bir giriş yaptınız "
		
	end
end


