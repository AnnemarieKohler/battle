require 'spec_helper'

feature 'Hug' do

  before(:each) do
    sign_in_and_play
    click_button 'Hug'
  end

  scenario 'Display successful hug' do
    text = 'P1 has successfully hugged P2'
    expect(page).to have_content(text)
  end

  scenario 'Hugger receives 10HP' do
    expect(page).to have_content('P1 receives 10HP')
  end

end
