def sign_in_and_play
  visit '/'
  fill_in :player_one, :with => 'P1'
  fill_in :player_two, :with => 'P2'
  click_button 'Start the game!'
end
