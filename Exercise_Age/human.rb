class Human
	attr_reader :name, :age, :gender
	@@gender = ["female"]
	def initialize (name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end
	def filter_gender
		@@gender.index(@gender.downcase)
	end
	def filter_age
	  if(@age >= 18)
	  	true	 
	  end	
	end
	def show_detail
		"Name: #{@name}, Age: #{@age}, Gender: #{@gender}"
	end
end
