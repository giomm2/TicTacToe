class Detection
	def self.check_horizontal(tic_tac_toe)
		count = 0
		helper = Array.new
		size = tic_tac_toe.length ** 0.5
		loop  do
			helper << tic_tac_toe[count]
			if helper.length == size.to_i && helper.uniq.length == 1
				return true
			elsif helper.length == size.to_i && helper.uniq.length > 1
				helper.pop(size)
			end
			count = count + 1
			break if count > tic_tac_toe.length - 1
		end
	end

	def self.check_vertical(tic_tac_toe)
		count = 0
		helper = Array.new
		size = tic_tac_toe.length ** 0.5
		loop	do
			helper << tic_tac_toe[count]
			if helper.length == size.to_i && helper.uniq.length == 1
				return true
			elsif helper.length == size.to_i && helper.uniq.length > 1
				helper.pop(size)
			end
			count = count + size
			break if count > tic_tac_toe.length - 1
		end
	end

	def self.check_cross(tic_tac_toe)
		if tic_tac_toe[6] == tic_tac_toe[4] && tic_tac_toe[4] == tic_tac_toe[2]
			return true
		elsif tic_tac_toe[0] == tic_tac_toe[4]  && tic_tac_toe[4] == tic_tac_toe[8]
			return true
		else
			return false
		end
	end

	def self.check_all(tic_tac_toe, name)
		if check_horizontal(tic_tac_toe) || check_vertical(tic_tac_toe) || check_cross(tic_tac_toe)
			puts "#{name} You won!!! \n"
			return true
		elsif tic_tac_toe.uniq.length == 2
			puts "Draw!!"
			return true
			end
	end
end
