require 'sinatra/base'
require_relative './lib/bookmark'


class BookmarkManager < Sinatra::Base
  get '/' do
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    erb :bookmarks
  end

  get '/bookmarks/new' do
    erb :"/bookmarks/new"
  end

  post '/bookmarks' do
    redirect '/bookmarks'
  end
  run! if app_file == $0

end