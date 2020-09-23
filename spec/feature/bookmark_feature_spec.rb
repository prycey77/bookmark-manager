feature 'View /bookmarks route' do
  scenario 'See saved bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content('www.google.com')
  end
end

