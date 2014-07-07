require 'spec_helper'

feature 'Manage Musical CRUD' do
  scenario 'User can create and view list of musicals' do
    visit '/'
    expect(page).to have_content 'Musicals!'
    click_on 'Musicals!'
    click_on 'Add Musical'
    fill_in 'Name', with: 'Singing in the Rain'
    fill_in 'Actor', with: 'Gene Kelly'
    click_on 'Create Musical'
    expect(page).to have_content 'Singing in the Rain'
    expect(page).to have_content 'Gene Kelly'
  end

  scenario 'User can edit and update musicals from a list' do
    visit '/'
    expect(page).to have_content 'Musicals!'
    click_on 'Musicals!'
    click_on 'Add Musical'
    fill_in 'Name', with: 'Singing in the Rain'
    fill_in 'Actor', with: 'Gene Kelly'
    click_on 'Create Musical'
    expect(page).to have_content 'Singing in the Rain'
    expect(page).to have_content 'Gene Kelly'
    click_on 'Singing in the Rain'
    expect(page).to have_content 'Singing in the Rain'
    expect(page).to have_content 'Gene Kelly'
    click_on 'Edit Musical'
    fill_in 'Name', with: 'The Wizard of Oz'
    fill_in 'Actor', with: 'Judy Garland'
    click_on 'Update Musical'
    expect(page).to have_no_content 'Singing in the Rain'
    expect(page).to have_no_content 'Gene Kelly'
    expect(page).to have_content 'The Wizard of Oz'
    expect(page).to have_content 'Judy Garland'

  end
end