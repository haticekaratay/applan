require './config/environment'
require 'sinatra/flash'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV['SESSION_SECRET']
    register Sinatra::Flash
  end
  
  not_found do
    status 404
    erb :error
  end

  get "/" do
    erb :welcome
  end

  helpers do
    def logged_in?
      !!session[:teacher_id]
    end

    def current_teacher
      @current_teacher ||= Teacher.find(session[:teacher_id])
    end

    def redirect_if_not_logged_in?
      redirect "/" if !logged_in?
    end

    def redirect_if_not_authorized
      if @plan.teacher != current_teacher
        redirect "/plans"
      end
    end

  end
end
