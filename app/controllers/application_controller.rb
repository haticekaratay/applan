require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def logged_in?
      !!session[:teacher_id]
    end

    def current_teacher
      Teacher.find(session[:teacher_id])
    end

    def redirect_if_not_logged_in?
      redirect "/" if !logged_in?
    end

  end
end
