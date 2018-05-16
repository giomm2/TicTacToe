require_relative 'player.rb'
require_relative 'detection.rb'

	def create_players
		number_of_players = 2
		players = Array.new
		number_of_players.times do |i|
			puts "Please write the name of player #{i+1}"
			name = gets
			players << Player.new(name)
		end
		return players
	end

	def player_information
		players = create_players
		player_by_turn = Array.new
		players.each_with_index do |player, index|
			puts "Player #{player.name} Do you want to be the computer: type 1"
			if gets.to_i == 1
				player.computer = true
			else
				players[index + 1].computer = true
			end
			turn = rand(1...3).to_i
			puts "#{player.name} your are going to be the #{turn} player"
			case turn
			when 1
				player_by_turn << player
				player_by_turn << players[index + 1]
			else
				player_by_turn << players[index + 1]
				player_by_turn << player
			end
			break if turn != 0
		end
		return player_by_turn
	end

	def load_tic_tac_toe
		tic_tac_toe = ["0", "1", "2", "3", "4", "5", "6", "7", "8"]
		return tic_tac_toe
	end

	def start_game
		tic_tac_toe = load_tic_tac_toe
		result = false
		players_by_turn = player_information
		display_board(tic_tac_toe)
		loop do
			players_by_turn.each do |player|
				if player.computer
					 result = computer_turn(tic_tac_toe,player.name)
				else
					result = player_turn(tic_tac_toe, player.name)
				end
			end
			break if result
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

	def player_turn(tic_tac_toe, player_name)
		player_number = Player.player_turn(player_name, tic_tac_toe)
			tic_tac_toe[player_number.to_i] = "X"
			display_board(tic_tac_toe)
			if Detection.check_all(tic_tac_toe,"#{ player_name }")
				puts "Try again: yes"
				if gets.chomp == "yes"
					start_game
				else
					puts "Thanks for playing!!!"
					exit
					return true
				end
			else
				return false
			end
	end

	def computer_turn(tic_tac_toe, player_name)
			random = Player.computer_turn(tic_tac_toe)
			tic_tac_toe[random] = "O"
			puts "(Computer) #{player_name}number selected: #{random}"
			display_board(tic_tac_toe)
			if Detection.check_all(tic_tac_toe,"#{player_name} (Computer)")
				puts "try again: yes"
				if gets == "yes"
					start_game
				else
					print "Thanks for playing!!!"
					exit
					return true
				end
			else
				return false
		  end
	end

start_game
