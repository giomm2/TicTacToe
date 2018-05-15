class Player
	attr_accessor :name, :sign

	def player_turn(player,tic_tac_toe)
		flag = false
		print "#{ player } is your turn, type a number "
		number = gets.chomp
		while flag == false do 		
			if tic_tac_toe[number.to_i] == number
				flag = true
				return number
			else
				puts "Sorry try again"
				print "#{ player } is your turn, type a number "
				number = gets.chomp
			end
		end
	end
end