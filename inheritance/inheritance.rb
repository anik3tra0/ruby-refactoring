# Let's begin by exploring the principles of Object Oriented Design

class Person
	
	attr_reader :first_name, :last_name

	def initialize first_name, last_name, gender
		@first_name = first_name
		@last_name = last_name
		@gender = gender
	end

	def full_name
		first_name + " " + last_name
	end

end

# Screencaster Inherits properties from Person
class Screencaster < Person

	def initialize first_name, last_name, gender, tools
		super first_name, last_name, gender
		@tools = tools
	end

end

# Student Inherits properties from Person
class Student < Person

	def initialize first_name, last_name, gender, preferred_language
		super first_name, last_name, gender
		@preferred_language = preferred_language
	end

end