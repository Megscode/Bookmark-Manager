require 'bookmark'

describe Bookmark do

    describe '#list' do
        it 'should list the bookmarks' do
            bookmarks = Bookmark.new
            expect(bookmarks.list).to include "http://www.google.com"
            expect(bookmarks.list).to include "http://www.makersacademy.com"
            expect(bookmarks.list).to include "http://www.destroyallsoftware.com"
        end
    end


end