require 'pg'

feature 'add to bookmarks' do
    scenario 'add a bookmark to the bookmark list' do
        connection = PG.connect(dbname: 'woofbark_manager_test')

        visit ('/')
        fill_in :new_bookmark, with: 'www.doggos.com'
        click_button('Add')
        # expect(page).to have_content "added" to add at a later date

        visit ('/bookmarks')
        expect(page).to have_content 'www.doggos.com'

    end
end

