require 'player'

describe Player do
  subject(:player) { described_class.new name}
  let(:name) { double :name }

  describe '#initialize' do
    it 'returns the player\'s name' do
      expect(player.name).to eq name
    end
    it 'has 0 hit points to start' do
      expect(player.hug_points).to eq described_class::HUG_POINTS
    end
  end

  describe '#hugs' do
    it 'increments HP by 10' do
      expect{ player.hugs }.to change { player.hug_points }.by(10)
    end
  end
end
