class TeachersController < ApplicationController

    get "/signup" do
        erb :"teachers/signup"
    end

    post "/signup" do
        if params[:username].empty? || params[:password].empty? || Teacher.find_by_username(params[:username])
            redirect "/signup"
        end
        teacher = Teacher.create(username: params[:username], password: params[:password])
        session[:teacher_id] = teacher.id  #adds a new key value pair to session hash
        redirect "/plans"   # this route will be created in controllers. 
    end

    get "/login" do
        erb :"teachers/login"
    end
    
    post "/login" do
        "in post login"
    end
end