require "./tax"
class Read_write_file
	def read_file
		file = File.open("data_goods.txt", "r")
		array_goods = Array.new
		if file
			while line = file.gets
				array_split = line.split(",")
				product = Product.new(array_split[0].to_i, array_split[1], array_split[2].to_i)				
				array_goods << product
			end
		else
			puts "can't open file"
		end
		file.close
		array_goods
	end

	def file_output(data)
	sum = 0
	write_file = File.new("Tax_output.txt", "w")
	if write_file
		data.each do |item|
			write_file.syswrite("Number: #{item.number} \t Product_name: #{item.product_name} \t price: #{item.count_price}\n")
			sum += item.count_price
		end
		write_file.syswrite("Total price all goods after tax: #{sum}$")
	else
		p "can't open file"
	end
end
end
t = Read_write_file.new
read = t.read_file
write = t.file_output(read)
