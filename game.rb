require_relative 'player.rb'
require_relative 'computer.rb'
require_relative 'winner.rb'
	def player_information
		print 'What is your name: '
		name = gets.chomp
		player = Player.new
		return player.name = name
	end

	def load_tic_tac_toe
		tic_tac_toe = Array.new
		tic_tac_toe = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
		return tic_tac_toe
	end

	def start_game
		computer = Computer.new
		player = Player.new
		detection = Winner.new
		tic_tac_toe = load_tic_tac_toe
		player_name = player_information
		print "Hello #{player_name} is time to start a new tic tac toe game. \n"
		result = false
		display_board(tic_tac_toe)
		while result == false do 
			
			player_number = player.player_turn(player_name,tic_tac_toe)
			tic_tac_toe[player_number.to_i] = "X"
			display_board(tic_tac_toe)
			if detection.check_horizontal(tic_tac_toe, "X") || detection.check_vertical(tic_tac_toe, "X") || detection.check_cross(tic_tac_toe, "X")
				print "#{ player_name } you won \n"
				print "Try again /yes"
				if gets.chomp == "yes"
					start_game
				else
					print "Thanks for playing"
				end
			end

			print "Computer turn"
			random = computer.computer_turn(tic_tac_toe)
			tic_tac_toe[random] = "O"
			display_board(tic_tac_toe)
			if detection.check_horizontal(tic_tac_toe, "O") || detection.check_vertical(tic_tac_toe, "O") || detection.check_cross(tic_tac_toe, "O")
				print "Computer won \n"
				print "try again /yes"
				if gets.chomp == "yes"
					start_game
				else
					print "Thanks for playing"
				end
			end
		end
	end

	def display_board(tic_tac_toe)
		line = "__________"
		puts "\n#{tic_tac_toe[0]} | #{tic_tac_toe[1]} | #{tic_tac_toe[2]}"
		puts line
		puts "#{tic_tac_toe[3]} | #{tic_tac_toe[4]} | #{tic_tac_toe[5]}"
		puts line
		puts "#{tic_tac_toe[6]} | #{tic_tac_toe[7]} | #{tic_tac_toe[8]}"
	end

start_game
