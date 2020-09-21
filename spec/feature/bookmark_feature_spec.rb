feature 'Bookmark manager index' do
  scenario 'viewing the index page' do
    visit('/')
    expect(page).to have_content("Bookmarks index")
  end
end