class Player
  attr_accessor :name, :computer

  def initialize(name)
    @name = name
    @computer = false
  end

  def self.player_turn(player, tic_tac_toe)
    number = selection(player)
    loop do
      if tic_tac_toe[number.to_i] == number
        return number
      else
        number = selection(player)
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

  def self.selection(player)
    print "#{ player } is your turn, type a number "
    number = gets.chomp
  end
end
