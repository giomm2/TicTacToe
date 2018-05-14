class Computer
	def computer_turn(tic_tac_toe)
		flag = false
		while flag == false do
			number = rand(0...8)
			if tic_tac_toe[number] == number.to_s
				flag = true
				return number
			end
		end	
	end
end