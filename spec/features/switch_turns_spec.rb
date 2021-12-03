
feature 'switch turns' do
  scenario 'switch turns after attack' do
    sign_in_and_play
    click_link 'Attack'
    click_link 'Attack'
    expect(page).to have_content('David: 90 HP')
  end

  feature 'switch turns' do
    context 'seeing the current turn' do
      scenario 'at the start of the game' do
        sign_in_and_play
        expect(page).to have_content "David's turn"
      end
  
      scenario 'after player 1 attacks' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).not_to have_content "David's turn"
        expect(page).to have_content "Tom's turn"
      end
    end
  end
end