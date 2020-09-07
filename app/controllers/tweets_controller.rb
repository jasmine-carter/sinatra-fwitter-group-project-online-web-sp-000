class TweetsController < ApplicationController

  get '/tweets' do
    #ßbinding.pry
    @user = current_user
    @tweets = Tweet.all
    if !logged_in?
      redirect "/login"
    else
      erb :'tweets/tweets'
    end
  end

end
