
class Hayvanlar 
	attr_accessor :beslenme, :barinma, :solunum_sekli, :cogalma, :boyut
		def initialize 
			@beslenme = beslenme
			@barinma = barinma 
			@solunum_sekli = solunum_sekli
			@cogalma = cogalma
			@boyut = boyut 
		end	
end

class Memeli < Hayvanlar
	attr_accessor :ter_bezleri, :orta_kulak_kemikleri
		def initialize
			@ter_bezleri = ter_bezleri
			@orta_kulak_kemikleri = orta_kulak_kemikleri
		end
end

class Surungenler < Hayvanlar
	attr_accessor :kis_uykusu, :keratin_pullar, :omurga_durumu
		def initialize
			@kis_uykusu = kis_uykusu
			@keratin_pullar = keratin_pullar
			@omurga_durumu = omurga_durumu
		end
end

class Inek < Memeli
	attr_accessor :dort_bolmeli_iskembe, :boynuz_durumu
	def initialize
		@dort_bolmeli_iskembe = dort_bolmeli_iskembe
		@boynuz_durumu = boynuz_durumu
	end
	
	def yazdir
		<<-KÜNYE
		Beslenme             : #{beslenme}
		Barinma              : #{barinma}
		Solunum Şekli        : #{solunum_sekli}
		Çogalma              : #{cogalma}
		Boyut                : #{boyut}
		Ter Bezleri          : #{ter_bezleri}
		Orta Kulak Kemikleri : #{orta_kulak_kemikleri}
		Dört Bölmeli İşkembe : #{dort_bolmeli_iskembe}
		Boynuz Durumu        : #{boynuz_durumu}
		KÜNYE
	end
			
end

class Balina < Memeli
	attr_accessor :yuzme_durumu
	def initialize
		@yuzme_durumu = yuzme_durumu
	end
		
	def yazdir
		<<-KÜNYE
		Beslenme             : #{beslenme}
		Barinma              : #{barinma}
		Solunum Şekli        : #{solunum_sekli}
		Çogalma              : #{cogalma}
		Boyut                : #{boyut}
		Ter Bezleri          : #{ter_bezleri}
		Orta Kulak Kemikleri : #{orta_kulak_kemikleri}
		Yüzme Durumu         : #{yuzme_durumu}
		KÜNYE
	end
end

class Yilan < Surungenler
	attr_accessor :deri_degistirme, :zehir_durumu
	def initialize
		@deri_degistirme = deri_degistirme
		@zehir_durumu = zehir_durumu
	end
	
	def yazdir
		<<-KÜNYE
		Beslenme             : #{beslenme}
		Barinma              : #{barinma}
		Solunum Şekli        : #{solunum_sekli}
		Çogalma              : #{cogalma}
		Boyut                : #{boyut}
		Kıs Uykusu           : #{kis_uykusu}
		Keratin Pullar       : #{keratin_pullar}
		Omurga Durumu        : #{omurga_durumu}
		Deri Degistirme      : #{deri_degistirme}
		Zehir Durumu         : #(zehir_durumu)
		KÜNYE
	end
		
end

class Kaplumbaga < Surungenler 
	attr_accessor :sert_kabuk, :kuyruk
		def initialize
			@sert_kabuk = sert_kabuk
			@kuyruk = kuyruk
		end
		
		def yazdir
		<<-KÜNYE
		Beslenme             : #{beslenme}
		Barinma              : #{barinma}
		Solunum Şekli        : #{solunum_sekli}
		Çogalma              : #{cogalma}
		Boyut                : #{boyut}
		Kıs Uykusu           : #{kis_uykusu}
		Keratin Pullar       : #{keratin_pullar}
		Omurga Durumu        : #{omurga_durumu}
		Sert Kabuk           : #{sert_kabuk}
		Kuyruk               : #{kuyruk}
		KÜNYE
	end
end
a=1
while(a) 
puts "Lutfen sececeginiz hayvani kucuk karakterlerle ve turkce karakter kullanmadan yaziniz (Ornek:yilan) :"
x = gets.chomp 
	if (x == "inek")
		inek = Inek.new
		inek.beslenme = "İnekler otcul beslenir."
		inek.barinma = "İnekler karada yasarlar."
		inek.solunum_sekli = "İnekler oksijenli solunum yaparlar."
		inek.cogalma = "İnekler dogum yaparak cogalırlar."
		inek.boyut = "İnek boyutları inegine göre degisir."
		inek.ter_bezleri = "İneklerde ter bezleri bulunur."
		inek.orta_kulak_kemikleri = "İnekler 3 parcali orta kulak kemiklerine sahiptir."
		inek.dort_bolmeli_iskembe = "İnegin midesi dört bölmeli olup en büyük bölüm işkembedir."
		inek.boynuz_durumu = "İneklerde boynuz bulunur."
		puts inek.yazdir
	 
	
	else if (x == "balina")	
		balina = Balina.new
		balina.beslenme = "Balinalar kucuk balıkları yiyerek beslenirler."
		balina.barinma = "Balinalar sularda yasarlar."
		balina.solunum_sekli = "Balinalar akciger solunumu yaparlar."
		balina.cogalma = "Balinalar yumurta yaparak cogalırlar."
		balina.boyut = "Balina boyutları balinasına göre degisir."
		balina.ter_bezleri = "Balinalarda ter bezleri bulunmaz."
		balina.orta_kulak_kemikleri = "Balinalar kendilerine özgü orta kulak kemigine sahiptir."
		balina.yuzme_durumu = "Balinalar cok iyi yüzerler."
		puts balina.yazdir

	
	else if (x == "yilan")
		yilan = Yilan.new
		yilan.beslenme = "Yılanlar et yiyerek beslenirler."
		yilan.barinma = "Yılanlar kisin topragin altında, yazın yeryuzunde yasarlar."
		yilan.solunum_sekli = "Yılanlar agizlarini acmadan solunum yaparlar."
		yilan.cogalma = "Yilanlar yumurta yaparak cogalırlar."
		yilan.boyut = "Yilan boyutları yilanina göre degisir."
		yilan.kis_uykusu = "Yilanlarda kis uykusu vardir."
		yilan.keratin_pullar = "Yilanlar keratin pullara sahiptir."
		yilan.omurga_durumu = "Yilanlar omurgaya sahip canlilardir."
		yilan.deri_degistirme = "Yilan deri degistirirler."
		yilan.zehir_durumu =  "Yilanlar zehirli veya zehirsiz olabilirler."
		puts yilan.yazdir
	
	else if ( x == "kaplumbaga")
		kaplumbaga = Kaplumbaga.new
		kaplumbaga.beslenme = "Kaplumbagalar hem otcul hem etcil beslenirler."
		kaplumbaga.barinma = "Kaplumbagalar karada veya suda yasayabilirler."
		kaplumbaga.solunum_sekli = "Kaplumbagalar akciger solunumu yaparlar."
		kaplumbaga.cogalma = "Kaplumbagalar yumurta yaparak cogalırlar."
		kaplumbaga.boyut = "Yilan boyutları yilanina göre degisir."
		kaplumbaga.kis_uykusu = "Kaplumbagalarda kis uykusu vardir."
		kaplumbaga.keratin_pullar = "Kaplumbagalarda keratin pul yoktur."
		kaplumbaga.omurga_durumu = "Kaplumbagalar omurgaya sahip canlilardir."
		kaplumbaga.sert_kabuk = "Kaplumbagalar cok sert kabuklara sahiptir."
		kaplumbaga.kuyruk = "Kaplumbagalarda kuyruk yoktur."
		puts kaplumbaga.yazdir
	else 
		puts "Yanlıs bir komut yazdınız... "
		a = FALSE
	
	
end		
end
end
end
end
	
			
			
	
