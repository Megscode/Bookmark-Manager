require 'bookmark'

describe Bookmark do

    describe '#list' do
        it 'should list the bookmarks' do

            connection = PG.connect(dbname: 'woofbark_manager_test')

            connection.exec("INSERT INTO woofbarks (url) VALUES ('http://www.makersacademy.com');")
            connection.exec("INSERT INTO woofbarks (url) VALUES('http://www.destroyallsoftware.com');")
            connection.exec("INSERT INTO woofbarks (url) VALUES('http://www.google.com');")

            bookmarks = Bookmark.new
            expect(bookmarks.list).to include "http://www.google.com"
            expect(bookmarks.list).to include "http://www.makersacademy.com"
            expect(bookmarks.list).to include "http://www.destroyallsoftware.com"
        end
    end


end