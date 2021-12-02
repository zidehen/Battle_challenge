feature 'attack Player 2' do
  scenario 'attack Player 2 and get confirmation' do
    sign_in_and_play
    click_link('Attack!')
    expect(page).to have_content('David just attacked Tom')
  end
end