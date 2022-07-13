require 'rails_helper'

RSpec.describe 'Parks otters index' do
  #User Story 5, Parent Children Index

  #As a visitor
  #When I visit '/parents/:parent_id/child_table_name'
  #Then I see each Child that is associated with that Parent with each Child's attributes:
  it 'shows all the otters belonging to a park' do
  otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
  mike = otterland.otters.create!(otter_age: 6, otter_name: "Mike", able_to_work: true)
  alexis = otterland.otters.create!(otter_age: 14, otter_name: "Alexis", able_to_work: false)

  visit "/parks/#{otterland.id}/otters"

  expect(page).to have_content(alexis.otter_age)
  expect(page).to have_content(mike.otter_name)
  end

  # User Story 16, Sort Parent's Children in Alphabetical Order by name
    # As a visitor
    # When I visit the Parent's children Index Page
    # Then I see a link to sort children in alphabetical order
    # When I click on the link
    # I'm taken back to the Parent's children Index Page where I see all of the parent's children in alphabetical order

    it 'has a link to sort otters in alphabetical order' do
    otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
    mike = otterland.otters.create!(otter_age: 6, otter_name: "Mike", able_to_work: true)
    alexis = otterland.otters.create!(otter_age: 14, otter_name: "Alexis", able_to_work: false)
    buddy = otterland.otters.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)

      visit "/parks/#{otterland.id}/otters"

      expect(mike.otter_name).to appear_before(alexis.otter_name)
      expect(alexis.otter_name).to appear_before(buddy.otter_name)

      expect(page).to have_link('Display in Alphabetical Order')
      click_link 'Display in Alphabetical Order'
      expect(page).to have_current_path("/parks/#{otterland.id}/otters?sort=alpha")

      expect(alexis.otter_name).to appear_before(buddy.otter_name)
      expect(buddy.otter_name).to appear_before(mike.otter_name)
    end



end
