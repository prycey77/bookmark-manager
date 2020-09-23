require 'sinatra/base'
require_relative './lib/bookmark'


class BookmarkManager < Sinatra::Base

  enable :session, :method_override

  delete '/bookmarks/:id' do
    p params
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end
    get '/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :"/bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end
  run! if app_file == $0

end