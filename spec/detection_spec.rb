require 'spec_helper.rb'
require './detection.rb'

describe Detection do

  context "#check_horizontal" do
    it "return true when tictacto has a horizontal win" do
      tic_tac_toe = ["X","X","X","3","4","5","6","7","8"]
      expect(Detection.check_horizontal(tic_tac_toe)).to be_truthy
    end

    it "return false when tictacto does not has a horizontal win" do
      tic_tac_toe = ["X","1","X","3","4","5","6","7","8"]
      expect(Detection.check_horizontal(tic_tac_toe)).to be_falsey
    end
  end

  context "#check_vertical" do
    it "return true when tictacto has a vertical win" do
      tic_tac_toe = ["X","1","2","X","4","5","X","7","8"]
      expect(Detection.check_vertical(tic_tac_toe)).to be_truthy
    end

    it "return false when tictacto does not has a vertical win" do
      tic_tac_toe = ["X","1","2","3","4","5","6","7","8"]
      expect(Detection.check_vertical(tic_tac_toe)).to be_falsey
    end
  end

  context "#check_cross" do
    it "return true when tictacto has a cross win" do
      tic_tac_toe = ["X","1","2","3","X","5","6","7","X"]
      expect(Detection.check_cross(tic_tac_toe)).to be_truthy
    end

    it "return false when tictacto does not has a cross win" do
      tic_tac_toe = ["X","1","2","3","4","5","6","7","8"]
      expect(Detection.check_cross(tic_tac_toe)).to be_falsey
    end
  end 
  
  context "#check_all" do
    it "return true when has a win" do
      tic_tac_toe = ["X","1","2","3","X","5","6","7","X"]
      expect(Detection.check_all(tic_tac_toe, "test")).to be_truthy
    end

    it "return false when does not has a win" do
      tic_tac_toe = ["X","1","2","3","4","5","6","7","X"]
      expect(Detection.check_all(tic_tac_toe,"test")).to be_falsey
    end

    it "return true when has a draw" do
      tic_tac_toe = ["X","O","X","X","O","O","O","X","X"]
      expect(Detection.check_all(tic_tac_toe, "test")).to be_truthy
    end
  end
end
