require '../app.rb'

describe Player do
# let(:player) {Player.new("Rolando")}

  context 'Player has a name' do

    it 'returns player name' do
      expect($player1).to eq "Rolando"
    end

  end

end
