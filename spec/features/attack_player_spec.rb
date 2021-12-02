feature 'attack Player 2' do
  scenario 'reduce player 2 hp by 10' do
    sign_in_and_play
    click_link('Attack')
    expect(page).not_to have_content('David: 100 HP')
    expect(page).to have_content('Tom: 90 HP')
  end
end