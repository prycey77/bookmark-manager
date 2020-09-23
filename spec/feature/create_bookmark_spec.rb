

feature 'Adds a new bookmark' do
  scenario 'Clicking on add to go to bookmark form' do
    visit('/')
    click_link("Add Bookmark")
    expect(page).to have_current_path('/bookmarks/new')
  end

  
end
