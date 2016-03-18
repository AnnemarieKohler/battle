feature 'Entering names' do
  scenario 'Entering player names' do
    sign_in_and_play
    expect(page).to have_content('P1 vs. P2')
  end
end
