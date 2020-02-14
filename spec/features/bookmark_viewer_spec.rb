require 'pg' 

feature 'List Bookmarks' do

    scenario 'list bookmarks' do 
        connection = PG.connect(dbname: 'woofbark_manager_test')

        connection.exec("INSERT INTO woofbarks VALUES(1, 'http://www.makersacademy.com');")
        connection.exec("INSERT INTO woofbarks VALUES(2, 'http://www.destroyallsoftware.com');")
        connection.exec("INSERT INTO woofbarks VALUES(3, 'http://www.google.com');")
        
        visit ('/bookmarks')

        expect(page).to have_content 'http://www.makersacademy.com'
        expect(page).to have_content 'http://www.destroyallsoftware.com'
        expect(page).to have_content 'http://www.google.com'
    end
end

