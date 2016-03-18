feature 'Show winner of the game' do
  scenario 'Show "Winner" message' do
    sign_in_and_play
    19.times do
      click_button 'Hug'
      click_button 'Next round!'
    end
    expect(page).to have_content("P1 has won!")
  end
end
