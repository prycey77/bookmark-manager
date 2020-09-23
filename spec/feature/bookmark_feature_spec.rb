require 'pg'

feature 'View /bookmarks route' do
  scenario 'See saved bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    
    visit('/bookmarks')
    expect(page).to have_content('www.google.com')
  end

  
end

