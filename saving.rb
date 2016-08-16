name = ""

while name != "done"
	print "Give me a user name: "
	name = gets.chomp
	if name != "done"	
		open('peeps.txt', 'a') do |f| 
			f.write("#{name}\n")
		end
	end
end

peeps = File.read("peeps.txt")

peeps.each_line do |line|
	puts line
end