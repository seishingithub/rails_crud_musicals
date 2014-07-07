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
end