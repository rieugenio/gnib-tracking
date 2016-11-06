require 'rails_helper'

feature 'Public registration of a new tracking', type: :feature, js: true do
	scenario 'visitor request a new tracking' do

    create(:sbcat, name: 'English Language Course', cat: create(:cat, name: 'Study'))
    create(:typ, name: 'New')

    visit root_path

    fill_in 'Name', with: 'Bruno', exact: false
    fill_in 'E-mail', with: 'me@brunobispo.com', exact: false
    select 'Study', from: 'Category', match: :first, exact: false
    select 'English Language Course', from: 'Sub Category', exact: false
    select 'New', from: 'Type', exact: true
    check 'tracking_user_attributes_eula'

    click_button "Let me know"

    expect(page).to have_text("Tracking was successfully created.")

	end
end