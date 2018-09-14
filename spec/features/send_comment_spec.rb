require 'rails_helper'

RSpec.feature 'Users can write us a comment' do
  scenario 'with a valid comment' do
    visit '/contact'
    fill_in 'Title', with: 'Sublime Text 3'
    fill_in 'Message', with: 'A text editor for everyone'
    click_button 'Submit'

    expect(page).to have_content 'Message has been submitted.'
  end
end
