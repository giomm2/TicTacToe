class Detection
  def self.check_horizontal(tic_tac_toe)
    if tic_tac_toe[(0..2)].uniq.length == 1 || tic_tac_toe[(3..5)].uniq.length == 1 || 
      tic_tac_toe[(6..8)].uniq.length == 1
    	return true
    end
  end

  def self.check_vertical(tic_tac_toe)
    if (tic_tac_toe[0] == tic_tac_toe[3] && tic_tac_toe[3] == tic_tac_toe[6]) || 
        (tic_tac_toe[1] == tic_tac_toe[4]  && tic_tac_toe[4] == tic_tac_toe[7]) || 
          (tic_tac_toe[2] == tic_tac_toe[5] && tic_tac_toe[5] == tic_tac_toe[8])
    	return true
    end
  end

  def self.check_cross(tic_tac_toe)
    if (tic_tac_toe[6] == tic_tac_toe[4] && tic_tac_toe[4] == tic_tac_toe[2]) || 
        (tic_tac_toe[0] == tic_tac_toe[4]  && tic_tac_toe[4] == tic_tac_toe[8])
    	return true
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
