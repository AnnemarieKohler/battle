require 'player'
require 'game'

describe Game do


  describe '#initialize' do
    subject(:game) { described_class.new player1, player2}

    let(:player_class) { double :player_class, new: player2}
    let(:player_class) { double :player_class, new: player1}

    let(:in_turn) { double :in_turn}

    let(:player1) { double :player1 }
    let(:player2) { double :player2, in_turn: false }

    before(:example) do
      player2.in_turn = false
    end
    it 'initializes with two player names' do
      expect(game.players).to include player1, player2
    end
  end

  describe '#hugger' do

    it 'returns the name of hugger' do
      pending('Fixing previous test, should resolve this')
      expect(game.hugger).to eq player1
    end

    it 'returns the name of player 2'
  end

  describe '#huggee' do
    it 'returns the name of huggee' do
      pending('Fixing previous test, should resolve this')
      expect(game.huggee).to eq player2
    end
  end
end
