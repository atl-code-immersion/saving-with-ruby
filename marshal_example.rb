class User

	attr_accessor :name, :location, :age

	def initialize(name, location, age)
		@name = name
		@location = location
		@age = age
	end
end

@users = []

name = ""

while name != "done"
	print "Give me a user name: "
	name = gets.chomp
	if name != "done"
		print "Their location: "
		loc = gets.chomp
		print "And their age: "
		age = gets.chomp.to_i
	
		@users.push(User.new(name, loc, age))

		# open('users.txt', 'a') do |f| 
		# 	f.write("#{user}\n")
		# end
	end
end

if File.zero?("users.txt") == false
	saved_users = File.open("users.txt", "r"){|from_file| Marshal.load(from_file)}

	@users += saved_users
end

File.open("users.txt", "w"){|f| f.write(Marshal.dump(@users))}

@users.each do |u|
	puts u.name
end

