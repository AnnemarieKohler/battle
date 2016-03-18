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
end
