require 'rails_helper'

RSpec.describe ' the parks show page' do
  #User Story 2, Parent Show

  #As a visitor
  #When I visit '/parents/:id'
  #Then I see the parent with that id including the parent's attributes:
  #- data from each column that is on the parent table
  it 'displayes the parks' do
    otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
    otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
    otterworld = Park.create!(title: 'Otter World', hiring_workers: true, number_of_workers: 4)

    visit "/parks/#{otterland.id}"

    expect(page).to have_content(otterland.title)
    expect(page).to_not have_content(otterkingdom.title)
    expect(page).to_not have_content(otterworld.title)
  end

end
