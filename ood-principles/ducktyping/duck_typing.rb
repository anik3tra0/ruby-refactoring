# Duck Typing allows replying on a message rather than inheritance. In this case its the 'talk' method.

# It's a really famous principle in Ruby because the language allows that in other case where Java or C++ don't. Java and C++ as asthetic languages rely heavily on strong fixed typing. Ruby doesn't have that. It has deep strong typing. It has classes and instances which you can use in many different ways.

# Using Duck Typing you can specify a specific interface for each class. In this case it is the 'talk' method.

# Asthetic Type languages use interfaces and then each method implements that interface. But Ruby on the other hand uses Duck Typing because there are no asthetic typing definations in the language.

class Person
	attr_reader :first_name, :last_name, :gender

	def initialize first_name, last_name, gender
		@first_name = first_name
		@last_name = last_name
		@gender = gender
	end

	def talk
		"Hello World!"
	end

end

class Animal

	def initialize name
		@name = name
	end

	def talk
		"Bark!, Meow!, Woof!, Moo!"
	end

end

class Alien

	def initialize type
		@type = type
	end

	def talk
		"Can aliens talk ?!?"
	end

end