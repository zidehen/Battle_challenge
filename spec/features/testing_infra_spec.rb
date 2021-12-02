
feature 'Testing infrastructure' do
    scenario 'can visit the homepage and check it has content' do
      visit('/')
      expect(page).to have_content("Testing infrastructure working!")
    end

end