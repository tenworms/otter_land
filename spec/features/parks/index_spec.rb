require 'rails_helper'

RSpec.describe ' Park Index' do

  # User Story 1, Parent Index
  # For each parent table
  # As a visitor
  # When I visit '/parents'
  # Then I see the name of each parent record in the system

  it 'displays all parks' do
    otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
    otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
    otterworld = Park.create!(title: 'Otter World', hiring_workers: true, number_of_workers: 4)

    visit "/parks"

    expect(page).to have_content(otterland.title)
    expect(page).to have_content(otterkingdom.title)
    expect(page).to have_content(otterworld.title)
  end

  #User Story 6, Parent Index sorted by Most Recently Created

  #As a visitor
  #When I visit the parent index,
  #I see that records are ordered by most recently created first
  #And next to each of the records I see when it was created

  it 'sorts parents index by most recently created' do
  otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
  otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
  otterworld = Park.create!(title: 'Otter World', hiring_workers: true, number_of_workers: 4)

  visit "/parks"

  expect(otterland.title).to appear_before(otterkingdom.title)
  expect(otterkingdom.title).to appear_before(otterworld.title)
  end

end
