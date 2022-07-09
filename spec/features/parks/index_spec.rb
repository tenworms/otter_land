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

end
