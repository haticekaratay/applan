class SessionsController < ApplicationController
    get "/login" do
        erb :"sessions/login"
    end
    
    post "/login" do
        teacher = Teacher.find_by_username(params[:username])
        if teacher && teacher.authenticate(params[:password])
            session[:teacher_id] = teacher.id
            redirect "/plans"
        else
            redirect "/login"
        end
    end

    get "/logout" do
        session.clear
        redirect "/login"
    end
end