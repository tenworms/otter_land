require 'rails_helper'

RSpec.describe 'Parks tters index' do
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
end
