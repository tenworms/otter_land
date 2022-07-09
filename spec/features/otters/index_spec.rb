require 'rails_helper'

RSpec.describe 'Otter Index' do
  it 'displays all otters' do

    #User Story 3, Child Index

    #As a visitor
    #When I visit '/child_table_name'
    #Then I see each Child in the system including the Child's attributes:
    otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
    mike = otterland.otters.create!(otter_age: 6, otter_name: "Mike", able_to_work: true)
    alexis = otterland.otters.create!(otter_age: 14, otter_name: "Alexis", able_to_work: false)

    visit "/otters"

    expect(page).to have_content(mike.otter_age)
    expect(page).to have_content(mike.otter_name)
    expect(page).to have_content(mike.able_to_work)
    expect(page).to have_content(alexis.otter_age)
    expect(page).to have_content(alexis.otter_name)
    expect(page).to have_content(alexis.able_to_work)

  end
end
