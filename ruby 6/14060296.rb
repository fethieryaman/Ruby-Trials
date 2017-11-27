#encoding: UTF-8
require 'stemmify' 
dizi1 = File.readlines("metin.txt").join(" ").split(" ") 
dizi2 = File.readlines("stp.txt").join(" ").split(" ") 

dizi1.each do |x|
	x.downcase!
	x.delete!("'?.,”“’")  # Buradaki (” “ ’) karakterleri silmesinde windowsda utf 8 hatası veriyor. Linuxda çalışacağını düşünüyorum. 
	dizi2.each do |y|
		if x == y
			dizi1.delete(x)
		end
	end
end

dizi=[]
dizi = dizi1.map{|x| x.stem}


hash={}
dizi.each do |x|
	value = dizi.count(x) 
	hash[x] = value
end

d = hash.sort_by{|key,values| values}

puts "Esik degeri giriniz"
esik = gets.to_i
i=0
while i<esik
	puts d[(d.length) -1-i]
	i=i+1
end

