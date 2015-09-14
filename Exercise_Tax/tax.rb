class Product
	attr_reader :number, :product_name, :price
	@@free_tax_name = ["food", "medicice", "book"]
	def initialize (number, product_name, price)
		@number = number
		@product_name = product_name
		@price = price
	end	

	def free_tax?			
		@@free_tax_name.index(@product_name) ? true: false
	end
	def import_tax?		
		@@free_tax_name.index("import") ? true: false
	end

	def calculate_tax
		tax_free = 0
		tax_free += 10 if free_tax? == false
		tax_free +=5 if import_tax? == true
		tax_free
	end
	def count_price
		(@price * @number * calculate_tax/100.0).round(3) + @price * @number	
	end	
	def result
		"Number: #{@number} Product_name: #{@product_name} Price: #{@price}"		
	end
end




