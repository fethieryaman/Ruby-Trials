dizi = File.readlines('fakulteler.txt').join(',').split(',')
hash={}
x=0
dizi.each do |i|
	hash[dizi[x]] = dizi[x+1].to_i
	x=x+2
	if x == ((dizi.length))
		break
	end
end

require 'Forwardable'
class Langirt
	extend Forwardable
	def_delegators :@degisken, :sort, :store, :keys, :values, :sort_by, :length, :to_i, :each, :delete
		attr_accessor :degisken
	def initialize()
		@degisken={}
	end
end

nesne = Langirt.new
nesne.degisken=hash

puts "1.Listeleme islemleri"
puts "2.Fakülteye gore siralama islemleri"
puts "3.Hasilata gore sıralama islemleri"
puts "4.Bazi fakultelerin hasilatini elle guncelleme islemleri"
puts "   0 Mühendislik Fakültesi hasilatini guncelleme  "
puts "   1 Fen Edebiyat Fakultesi hasilatini guncelleme  "
puts "   2 Egitim Fakültesi hasilatini guncelleme  "
puts "   3 Ziraat Fakültesi hasilatini guncelleme  "
puts "   4 Veteriner Fakültesi hasilatini guncelleme  "
puts "   5 İlahiyat Fakültesi hasilatini guncelleme  "
puts "   6 İktisat Fakültesi hasilatini guncelleme  "
puts "   7 Saglik bilimleri Fakültesi hasilatini guncelleme  "
puts "   8 Tip Fakültesi hasilatini guncelleme  "
puts "   9 Dis Hekimligi Fakültesi hasilatini guncelleme  "
puts "5.Yeni fakulte ve onun hasilatini ekleme islemleri"
puts "6.Bazi fakulteleri silme islemleri"
puts "   0 Mühendislik Fakültesi silme  "
puts "   1 Fen Edebiyat Fakultesi silme  "
puts "   2 Egitim Fakültesi silme  "
puts "   3 Ziraat Fakültesi silme  "
puts "   4 Veteriner Fakültesi silme  "
puts "   5 İlahiyat Fakültesi silme  "
puts "   6 İktisat Fakültesi silme  "
puts "   7 Saglik bilimleri Fakültesi silme  "
puts "   8 Tip Fakültesi silme  "
puts "   9 Dis Hekimligi Fakültesi silme "
puts "Lutfen yukaridaki yapmak istediginiz islemin basindaki integer degerini sırasıyla giriniz :"
puts "Eger cikmak istiyorsaniz ->cikis<- yaziniz :"

x=1
while (x)
girdi = gets.chomp
	if(girdi == "1")
		nesne.each{|key,value| puts "#{key} ---> #{value}"}
	elsif(girdi == "2")
		a={}
		a = nesne.keys.sort
		a.each{|key,value| puts "#{key} ---> #{nesne.degisken[key]}"}
	elsif(girdi == "3")
		
		sirali = Langirt.new
		sirali = nesne.sort_by{|key,values| values}.to_h
		sirali.each{|keys,values| puts "#{keys} ---> #{values}"}
	elsif(girdi == "4")
		deger = gets.to_i
		if (deger < nesne.length && deger >=0)
			puts "Lutfen guncel hasilati giriniz :"
			n = gets.chomp
			nesne.store(nesne.degisken.keys[deger],n)
			puts nesne.each{|key,value| puts "#{key} ---> #{value}"}
		else 
			puts "Yanlıs bir giris yaptiniz..."
			x=FALSE
		end
	
	elsif(girdi == "5")
		puts "Yeni fakulte ismini giriniz :"
		new_fakulte = gets.chomp
		puts "Yeni fakulte hasılatını giriniz :"
		new_hasilat = gets.chomp
		nesne.degisken[new_fakulte]= new_hasilat
		nesne.each{|key,value| puts "#{key} ---> #{value}"}
	elsif(girdi == "6")
		deger = gets.to_i
		if (deger < nesne.length && deger >=0)
			nesne.delete(nesne.keys[deger]) 
			nesne.each{|key,value| puts "#{key} ---> #{value}"}
		else
			puts "Yanlis bir giris yaptiniz..."
			x = FALSE
		end
			
	elsif (girdi == "cikis")
		x=FALSE
	else
		puts "Yanlis bir deger giriniz. Lutfen dikkat ediniz ve tekrar deneyiniz.."
		
end
end