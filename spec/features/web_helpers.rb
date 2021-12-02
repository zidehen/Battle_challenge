def sign_in_and_play
  visit('/')
  fill_in('Player_1', with: 'David')
  fill_in('Player_2', with: 'Tom')
  click_button 'Submit'
end