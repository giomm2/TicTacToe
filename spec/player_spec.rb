require 'spec_helper.rb'
require './player.rb'

describe Player do 
  
  context "#initialize" do
    it "raise and exeption when is null" do
      expect {Player.new}.to raise_error
    end

    it "does not raise and exeption when name is not null" do
      expect { Player.new("test") }.to_not raise_error
    end
  end

  context "#name" do
    it "return the name" do
      player = Player.new("test")
      expect(player.name).to eq "test"
    end
  end

  context "#computer" do
    it "return the computer" do
      player = Player.new("test")
      expect(player.computer).to eq false
    end
  end

  #context "#player_turn" do
  # it "return the player selection" do
  #   tic_tac_toe = ["X","1","X","X","X","X","X","X"]
  #   name = "test"
  #   player = Player.player_turn(name, tic_tac_toe)
  #   expect(player).to eq 1
  # end
  #end

  context "#computer_turn" do
    it "return the random selection" do
      tic_tac_toe = ["X","1","X","X","X","X","X","X"]
      player = Player.computer_turn(tic_tac_toe)
      expect(player).to eq 1
    end
  end
end
