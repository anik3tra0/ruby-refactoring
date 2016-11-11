# Polymorphism is a way of implementing variations of a base class method!

class Person
	attr_reader :first_name, :last_name, :gender

	def initialize first_name, last_name, gender
		@first_name = first_name
		@last_name = last_name
		@gender = gender
	end

	def full_name
		first_name + " " + last_name
	end

	def present
		raise NotImplementedError, "Must be implemented by subtypes"
		# %Q{Hello, my name is #{full_name} and I am a #{gender}}

		# By commenting and raising an custom exception. we are emphasizing that the present method can be called on an instance of any of Person Classes' Subclasses'

		# E.g. Teacher.first.present will give you a desired output
	end

end

class Teacher < Person

	def initialize first_name, last_name, gender, tools
		super first_name, last_name, gender
		@tools = tools
	end

	def present
		%Q{Hello, welcome to DCT Learn Ups! My name is #{full_name} and I'll be your teacher!}
	end

end

class Student < Person

	def initialize first_name, last_name, gender, preferred_language
		super first_name, last_name, gender
		@preferred_language = preferred_language
	end

	def present
		%Q{Hows' it going guys! I am #{full_name} (#{gender}). Glad to be part of this awesome learn up! :)}
	end

end