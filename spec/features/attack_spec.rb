require 'spec_helper'

feature 'Attack opponent' do

  before(:each) do
    sign_in_and_play
    click_button 'Hug'
  end

  scenario 'attack player two' do
    expect(page).to have_content('P1 has hugged P2')
  end

  scenario 'opponent receives 10HP' do
    expect(page).to have_content('P2 has received 10HP')
  end

end
