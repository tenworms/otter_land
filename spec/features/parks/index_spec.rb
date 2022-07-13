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

  # User Story 17, Parent Update From Parent Index Page
    # As a visitor
    # When I visit the parent index page
    # Next to every parent, I see a link to edit that parent's info
    # When I click the link
    # I should be taken to that parents edit page where I can update its information just like in User Story 4

    it 'has links to edit parks' do
      otterland = Park.create!(title: 'Otter Land', hiring_workers: true, number_of_workers: 17)
      otterkingdom = Park.create!(title: 'Otter Kingdom', hiring_workers: false, number_of_workers: 20)
      visit "/parks"

      within "#park-#{otterland.id}" do
        expect(page).to have_content("#{otterland.title}")
        expect(page).to have_link('Edit')
      end

      within "#park-#{otterkingdom.id}" do
        expect(page).to have_content("#{otterkingdom.title}")
        expect(page).to have_link('Edit')
        click_link 'Edit'
        expect(current_path).to eq("/parks/#{otterkingdom.id}/edit")
      end

    end



end
