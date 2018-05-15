class Winner
	def check_horizontal(tic_tac_toe, sign)
		if tic_tac_toe[0] == sign && tic_tac_toe[1] == sign && tic_tac_toe[2] == sign
			return true 
		elsif tic_tac_toe[3] == sign && tic_tac_toe[4] == sign && tic_tac_toe[5] == sign
			return true
		elsif tic_tac_toe[6] == sign && tic_tac_toe[7] == sign && tic_tac_toe[8] == sign
			return true
		else
			return false
		end
	end

	def check_vertical(tic_tac_toe, sign)
		if tic_tac_toe[0] == sign && tic_tac_toe[3] == sign && tic_tac_toe[6] == sign
			return true 
		elsif tic_tac_toe[1] == sign && tic_tac_toe[4] == sign && tic_tac_toe[7] == sign
			return true
		elsif tic_tac_toe[2] == sign && tic_tac_toe[5] == sign && tic_tac_toe[8] == sign
			return true
		else
			return false
		end
	end

	def check_cross(tic_tac_toe, sign)
		if tic_tac_toe[6] == sign && tic_tac_toe[4] == sign && tic_tac_toe[2] == sign
			return true 
		elsif tic_tac_toe[0] == sign && tic_tac_toe[4] == sign && tic_tac_toe[8] == sign
			return true
		else
			return false
		end
	end
end