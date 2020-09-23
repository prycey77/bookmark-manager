feature 'Delete bookmark' do
    scenario 'Clicking the delete button will delete the bookmark entry' do
        connection = PG.connect(dbname: 'bookmark_manager_test')
        connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google');")
        visit('/')
        page.find_link('Delete').click
        expect(page).not_to have_link("Google",href:"http://www.google.com")
    end
end

#TODO implement the delete feature and unit tests.