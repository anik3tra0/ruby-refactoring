# Encapsulation allows you to protect your data from the outside. Encapsulation and knowing the state of your object is key to refactoring.

class Person
	## When you comment your attribute readers and writers, you no longer have access to your data from the outside and vice versa

	# attr_reader :first_name, :last_name, :gender
	# attr_writer :first_name, :last_name, :gender

	def initialize first_name, last_name, gender
		@first_name = first_name
		@last_name = last_name
		@gender = gender
	end

	## When attr_reader is commented (unaccessible) then below method full_name will not work as it can no longer access first_name and last_name. But this can be defined using a private method

	def full_name
		first_name + " " + last_name
		# @first_name + " " + @last_name => This will work but it is not good practise. Because you lose flexibility and based upon the principles of inheritance, we will have to write another method to define it.
	end

	private

	# We are setting up a private method to allow read access. By setting these the full name method will work as it has access. But first_name and last_name methods are still not accessible from the outside

	def first_name
		@first_name
	end

	def last_name
		@last_name
	end

end

class Teacher < Person

	def initialize first_name, last_name, gender, tools
		super first_name, last_name, gender
		@tools = tools
	end

end

class Student < Person

	def initialize first_name, last_name, gender, preferred_language
		super first_name, last_name, gender
		@preferred_language = preferred_language
	end

end