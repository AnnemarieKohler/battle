require 'player'
require 'game'

describe Game do
  subject(:game) { described_class.new player1, player2}
  let(:player1) { Player.new 'Player 1' }
  let(:player2) { Player.new 'Player 2' }

  describe '#initialize' do
    it 'initializes with two players' do
      expect(game.players).to include player1, player2
    end
  end

  describe '#hugger' do
    it 'returns the name of hugger' do
      expect(game.hugger).to eq player1
    end
  end

  describe '#huggee' do
    it 'returns the name of huggee' do
      expect(game.huggee).to eq player2
    end
  end

  context 'Find winner' do
    before(:example) do
      allow(player1).to receive(:hit_points).and_return(100)
    end

    describe '#winner?' do
      it 'checks if any player has 100 hp' do
        expect(game.winner?).to be_truthy
      end
    end

    describe '#display_winner' do
      it 'returns name of the winner' do
        expect(game.display_winner).to eq player1.name
      end
    end
  end


end
