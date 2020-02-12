feature 'List Bookmarks' do

    scenario 'list bookmarks' do 
        visit ('/bookmarks')

        expect(page).to have_content 'http://www.google.com'
    end
end

