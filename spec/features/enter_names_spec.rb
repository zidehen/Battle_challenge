
feature 'Player names' do
  scenario 'players can fill in their names' do
    visit('/')
    fill_in('Player_1', with: 'David')
    fill_in('Player_2', with: 'Tom')
    click_button 'Submit'

    # save_and_open_page 

    expect(page).to have_content('David vs. Tom')
  end
end