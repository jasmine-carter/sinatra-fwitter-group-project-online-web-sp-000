class TweetsController < ApplicationController

  get '/tweets' do
    #binding.pry
    @user = current_user
    @tweets = Tweet.all
    if !logged_in?
      redirect "/login"
    else
      erb :'tweets/tweets'
    end
  end

  get '/tweets/new' do
    if logged_in?
      erb :'tweets/new'
    else
      redirect "/login"
    end
  end

  post '/tweets' do
    binding.pry
  end

end
