class TweetsController < ApplicationController

  get '/tweets' do
    @user = current_user
    if !logged_in?
      redirect "/login"
    else
      erb :'/index'
    end
  end

end
