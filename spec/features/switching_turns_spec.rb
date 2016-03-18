feature "Switching turns" do

  scenario "Switch player after each hug" do
    sign_in_and_play
    click_button 'Hug'
    click_button 'Next round!'
    expect(page).to have_content "P2's turn!"
  end
end
