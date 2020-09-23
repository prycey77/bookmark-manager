require 'bookmark'
describe Bookmark do
  it 'Returns a list of bookmarks when .all is called' do
    expect(Bookmark.all).to eq ['www.google.com','makers.tech']
  end
end