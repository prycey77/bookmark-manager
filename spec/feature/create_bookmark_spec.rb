

feature 'Adds a new bookmark' do
  scenario 'Clicking on add to go to bookmark form' do
    visit('/')
    click_link("Add Bookmark")
    expect(page).to have_current_path('/bookmarks/new')
  end

  scenario 'Enter bookmark info and submit will display saved bookmark' do
    visit('/bookmarks/new')
    fill_in 'title', with: 'ABC'
    fill_in 'url', with: 'http://www.abc.com'
    click_button 'Submit'
    expect(page).to have_content('ABC')
  end
end
