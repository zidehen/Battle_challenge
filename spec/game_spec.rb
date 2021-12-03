require 'game'

describe Game do
  before do
    @tom = double('tom', reduce_points: nil)
    @dave = double
    @game = Game.new(@dave, @tom)
  end

  describe '#attack' do
    it 'attacks the player' do
      expect(@tom).to receive(:reduce_points)
      @game.attack(@tom)
    end
  end

  describe '#switch turns' do
    it 'switch turns between attacks' do
      @game.switch_turns
      expect(@game.current_player).to eq(@dave)
    end
  end

end