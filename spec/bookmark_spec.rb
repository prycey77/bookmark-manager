require 'bookmark'
describe Bookmark do

  let(:title) { 'Test' }
  let(:url) { 'www.test.com' }

  # it 'takes a title and url on initialisation' do
  #   expect(Bookmark).to respond_to(:new).with(2).arguments
  # end

  # it 'stores the title given' do
  #   bookmark = Bookmark.new(title, url)
  #   expect(bookmark.title).to eq title
  # end

  # it 'stores the url given' do
  #   bookmark = Bookmark.new(title, url)
  #   expect(bookmark.url).to eq url
  # end

  describe '#all' do
    it 'Returns a list of bookmarks when .all is called' do
      expect(Bookmark.all).to eq []
    end
  end
  describe '#create' do
    it 'Adds a new bookmark url' do
      Bookmark.create(url: "www.test.com", title: 'test.com')
      expect(Bookmark.all[0].url).to eq('www.test.com')
    end

    it 'Adds the new bookmark title' do
      Bookmark.create(title: 'Test', url: "www.test.com")
      expect(Bookmark.all[0].title).to include('Test')
    end
  end

end