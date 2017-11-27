class Emlak 
	attr_reader :tip, :il, :odasys, :fiyat, :sayac
	@@sayac=0
	def initialize()
		@tip = tip
		@il = il
		@odasayisi = odasayisi
		@fiyat = fiyat
		@@sayac += 1
	end
	
	def sayma
		@@sayac
	end
	
end	

