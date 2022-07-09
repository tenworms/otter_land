require 'rails_helper'

RSpec.describe ' the otters show page' do
  #User Story 4, Child Show

  #As a visitor
  #When I visit '/child_table_name/:id'
  #Then I see the child with that id including the child's attributes:
  it 'displayes the otters' do
    otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)

    buddy = otterland.otters.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)
    al = otterland.otters.create!(otter_age: 4, otter_name: "Al", able_to_work: true)
    tails = otterland.otters.create!(otter_age: 8, otter_name: "Tails", able_to_work: true)

    visit "/otters/#{buddy.id}"

    expect(page).to have_content(buddy.otter_age)
    expect(page).to have_content(buddy.otter_name)
    expect(page).to have_content(buddy.able_to_work)
    expect(page).to_not have_content(al.otter_age)
    expect(page).to_not have_content(al.otter_name)
    expect(page).to_not have_content(al.able_to_work)
    expect(page).to_not have_content(tails.otter_age)
    expect(page).to_not have_content(tails.otter_name)
    expect(page).to_not have_content(tails.able_to_work)
  end

end
