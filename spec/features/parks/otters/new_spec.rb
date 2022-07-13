require 'rails_helper'

RSpec.describe 'Park otters new otters' do

#User Story 13
#As a visitor
#When I visit a Parent Childs Index page
#Then I see a link to add a new adoptable child for that parent "Create Child"
#When I click the link
#I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
#When I fill in the form with the child's attributes:
#And I click the button "Create Child"
#Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
#a new child object/row is created for that parent,
#and I am redirected to the Parent Childs Index page where I can see the new child listed
  it 'has a link to create a new otter' do
    otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)

    visit "/parks/#{otterland.id}/otters"
    click_link('Create otter')
    expect(current_path).to eq("/parks/#{otterland.id}/otters/new")
  end
  it 'skdjfbsdfksfsdf' do
    otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)

    visit "/parks/#{otterland.id}/otters/new"
    fill_in 'otter_name', with: 'Clark'
    select 'yes', from: 'Able to work'
    fill_in 'otter_age', with: '5'
    click_button 'Create otter'


    expect(current_path).to eq("/parks/#{otterland.id}/otters")
    expect(page).to have_content('Clark')
  end
end
