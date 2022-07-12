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

  #User Story 7, Parent Child Count

  #As a visitor
  #When I visit a parent's show page
  #I see a count of the number of children associated with this parent
  it 'displays a number of otters associated with the park' do
    otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
    buddy = otterkingdom.otters.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)
    al = otterkingdom.otters.create!(otter_age: 4, otter_name: "Al", able_to_work: true)

    visit "/parks/#{otterkingdom.id}"

    expect(page).to have_content(otterkingdom.otters_count)
    expect(page).to have_content("This Park has 2 otters")
  end
  #User Story 8, Child Index Link

  #As a visitor
  #When I visit any page on the site
  #Then I see a link at the top of the page that takes me to the Child Index
  it 'displays a link that takes me to otters index' do
    otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
    buddy = otterkingdom.otters.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)
    al = otterkingdom.otters.create!(otter_age: 4, otter_name: "Al", able_to_work: true)

    visit "/parks/#{otterkingdom.id}"
    expect(page).to have_link("Otters")
    click_link 'Otters'

    expect(current_path).to eq("/parks/#{otterkingdom.id}/otters")
  end

  #User Story 9, Parent Index Link

  #As a visitor
  #When I visit any page on the site
  #Then I see a link at the top of the page that takes me to the Parent Index
  it 'displays a link that takes me to parks index' do
    otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
    buddy = otterkingdom.otters.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)
    al = otterkingdom.otters.create!(otter_age: 4, otter_name: "Al", able_to_work: true)

    visit "/otters/#{buddy.id}"
    expect(page).to have_link("Parks")
    click_link 'Parks'

    expect(current_path).to eq("/parks")
  end
  it 'displays a link that takes me to parks index' do
    otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
    buddy = otterkingdom.otters.create!(otter_age: 1, otter_name: "Buddy", able_to_work: false)
    al = otterkingdom.otters.create!(otter_age: 4, otter_name: "Al", able_to_work: true)

    visit "/parks/#{otterkingdom.id}"

    expect(page).to have_link("otters")

    click_link "otters"

    expect(current_path).to eq("/parks/#{otterkingdom.id}/otters")
  end
end
