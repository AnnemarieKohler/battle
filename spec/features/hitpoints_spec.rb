feature 'Show hit points' do
  scenario 'Show player two hit points' do
    sign_in_and_play
    expect(page).to have_content('P2: 0/100 HP')
  end
end
