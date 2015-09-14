require "./human"
class Read_write_human
	def read_file
		file = File.new("data_human.txt", "r")
		array_human = Array.new
		if file
			while line = file.gets
				array_split = line.split(",")
				human = Human.new(array_split[0].to_s, array_split[1].to_i, array_split[2].to_s)
				array_human << human
			end
		else
			puts "can't open file"		
		end
		file.close
	  array_human		
	end

	def write_file(data)
		write_file = File.new("human_output.txt", "w")
		if write_file
			data.each do |item|
				write_file.syswrite("Name: #{item.name} \t Age: #{item.age} \t Gender: #{item.gender}")
			end
		else
			puts "Can't open file"
		end
	end
end
human = Read_write_human.new
read = human.read_file
read.select! {|item| (item.filter_age)}
read.each {|item| item.show_detail}
write = human.write_file(read)