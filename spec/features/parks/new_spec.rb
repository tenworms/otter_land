require 'rails_helper'
# User Story 11
RSpec.describe 'New Park' do
  it 'I can create a new park' do
      visit '/parks'

      click_link 'New Park'

      expect(current_path).to eq('/parks/new')

      fill_in 'Title', with: 'Otter Nation'
      select 'yes', from: 'Hiring workers'
      fill_in 'Number of workers', with: '98'
      click_on 'Create Park'

      expect(current_path).to eq("/parks")
      expect(page).to have_content('Otter Nation')
    end


end
