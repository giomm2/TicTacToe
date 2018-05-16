class Player
	attr_accessor :name, :computer

	def initialize(name)
		@name = name
		@computer = false
	end

	def self.player_turn(player, tic_tac_toe)
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

	def self.computer_turn(tic_tac_toe)
		flag = false
		while flag == false do
			number = rand(0...9)
			if tic_tac_toe[number] == number.to_s
				flag = true
				return number
			end
		end
	end
end
