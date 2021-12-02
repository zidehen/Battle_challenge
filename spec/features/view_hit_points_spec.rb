feature "Player 2 Hit points" do
  scenario 'be able to see player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content('Tom: 20 HP')
    end
end