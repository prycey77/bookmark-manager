feature 'Bookmark manager index' do
  scenario 'viewing the index page' do
    visit('/')
    expect(page).to have_content("Bookmarks index")
  end
end

feature 'View /bookmarks route' do
  scenario 'See saved bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('www.google.com')
  end
end

