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
		tic_tac_toe = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
		return tic_tac_toe
	end

	def start_game	
		tic_tac_toe = load_tic_tac_toe
		result = false
		player_name = player_information
		display_board(tic_tac_toe)
		while result == false do 
			player_turn(tic_tac_toe, player_name)
			computer_turn(tic_tac_toe)
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

	def player_turn(tic_tac_toe,player_name)
		player = Player.new
		detection = Winner.new

		player_number = player.player_turn(player_name, tic_tac_toe)
			tic_tac_toe[player_number.to_i] = "X"
			display_board(tic_tac_toe)
			if detection.check_all(tic_tac_toe,"#{ player_name }")
				puts "Try again: yes"
				if gets.chomp == "yes"
					start_game
				else
					puts "Thanks for playing"
					result = true
				end
			end
	end

	def computer_turn(tic_tac_toe) 
		detection = Winner.new
		computer = Computer.new
		puts "Computer turn"
			random = computer.computer_turn(tic_tac_toe)
			tic_tac_toe[random] = "O"
			display_board(tic_tac_toe)
			if detection.check_all(tic_tac_toe,"Computer")
				puts "try again: yes"
				if gets.chomp == "yes"
					start_game
				else
					print "Thanks for playing"
					result = true
				end
		  end
	end

start_game
