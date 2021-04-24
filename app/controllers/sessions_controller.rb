class SessionsController < ApplicationController
    get "/login" do
        erb :"sessions/login"
    end
    
    post "/login" do
        teacher = Teacher.find_by_username(params[:username])
        if teacher && teacher.authenticate(params[:password])
            session[:teacher_id] = teacher.id
            flash[:success] = "Successfully logged in!"
            redirect "/plans"
        else
            flash[:error] = "Username and password doesn't match! or invalid entry!"
            redirect "/login"
        end
    end

    get "/logout" do
        session.clear
        flash[:success] = "Successfully logged out! See you soon!"
        redirect "/login"
    end
end