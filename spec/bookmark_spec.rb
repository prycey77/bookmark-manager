require 'bookmark'
describe Bookmark do
  describe '#all' do
    it 'Returns a list of bookmarks when .all is called' do
      expect(Bookmark.all).to eq ['www.google.com','makers.tech']
    end
  end
  describe '#create' do
    it 'Adds a new bookmark url' do
      Bookmark.create("www.test.com")
      expect(Bookmark.all).to_include('www.test.com')
    end
  end

end