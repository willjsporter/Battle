require 'game'
require 'player'

describe Game do

  it "HP can change" do
    player_double = double("Player", :damage => 80)
    expect(player_double).to receive(:damage)
    subject.attack2(player_double)
  end

  end
