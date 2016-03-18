feature "Play page" do

  before(:each) do
    sign_in_and_play
  end

  scenario "Display players names" do
    expect(page).to have_content "P1 vs. P2"
  end

  scenario "Display player1's HP" do
    expect(page).to have_content "P1: 0/100 HP"
  end

  scenario "Display player2's HP" do
    expect(page).to have_content "P2: 0/100 HP"
  end

  scenario "Display the turn" do
    expect(page).to have_content "P1's turn!"
  end
end
