feature Battle do
  context 'homepage' do
    it 'displays "Testing infrastructure working!"' do
      visit('/')
      expect(page).to have_content("Testing infrastructure working!")
    end
  end

end