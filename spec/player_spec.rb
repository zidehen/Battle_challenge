require 'player'

describe Player do
 it 'returns the player name' do
    subject = Player.new('David')
    expect(subject.name).to eq('David')
 end
end