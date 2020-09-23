require 'pg'

feature 'View /bookmarks route' do
  scenario 'See saved bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers');")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'DestroyAllSoftware' );")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');")
    
    visit('/bookmarks')
    expect(page).to have_content('Google')
  end

  scenario 'Clicking link in bookmark page will take user to new URL' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');")
    visit('/')
    expect(page).to have_link("Google",href:"http://www.google.com")
  end
  
end

