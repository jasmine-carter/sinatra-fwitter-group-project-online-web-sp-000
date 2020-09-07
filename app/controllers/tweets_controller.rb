class TweetsController < ApplicationController

  get '/tweets' do
    binding.pry
    @user = current_user
    @tweets = Tweets.all
    if !logged_in?
      redirect "/login"
    else
      erb :'tweets/tweets'
    end
  end

end
