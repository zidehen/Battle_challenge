require 'player'

describe Player do
  let(:player1) { Player.new('David') }
  let(:player2) { Player.new('Tom') }
  
  it 'returns the player name' do
    expect(player1.name).to eq('David')
  end

  describe '#hp' do
    it 'returns hit points' do
      expect(player2.hp).to eq described_class::HP
    end
  end

  # describe '#attack' do
  #   it 'reduce points of the player' do
  #     expect(player2).to receive(:reduce_points)
  #     player1.attack(player2)
  #   end
  # end
end