
class Galery
	attr_reader :fiyat, :şehir, :tip
	def initialize(tip,şehir,fiyat)
	@tip = tip;
	@şehir = şehir;
	@fiyat = fiyat;
	end
	
	def ayni(other)
	return @fiyat == other.fiyat ? "İki aracın fiyatları eşittir." : "İki aracın fiyatları eşit değil"
	end
	
	def buyuk_mu(other)
	return @fiyat > other.fiyat ? "İki aracın fiyatlarından #{@şehir}'daki #{@tip} fiyatı digerine göre daha pahalı" 
						: "İki aracın fiyatlarından #{@şehir}'daki #{@tip} fiyatı digerine göre daha pahalı degil"
	end
	
	def kucuk_mu(other)
	return @fiyat > other.fiyat ? "İki aracın fiyatlarından #{@şehir}'daki #{@tip} fiyatı digerine göre daha ucuz degil" 
						: "İki aracın fiyatlarından #{@şehir}'daki #{@tip} fiyatı digerine göre daha ucuz"
	end
	
	def indirim(other)
	return @fiyat - other
	end
	
	def pahali(other)
	return @fiyat + other
	end
	
end	
	
	nesne1 = Galery.new("Taksi","Samsun",20000)
	nesne2 = Galery.new("Otobüs","Kırşehir",80000)

 
	puts nesne1.ayni(nesne2)
	puts nesne1.buyuk_mu(nesne2)
	puts nesne1.kucuk_mu(nesne2)
	puts nesne1.indirim(2000)
	puts nesne1.pahali(2000)

