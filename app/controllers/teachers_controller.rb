class TeachersController < ApplicationController

    get "/signup" do
        erb :"teachers/signup"
    end

    post "/signup" do
        if params[:username].empty? || params[:password].empty? || Teacher.find_by_username(params[:username])
            flash[:error] = "Invalid user input! Try again."
            redirect "/signup"
        end
        teacher = Teacher.create(username: params[:username], password: params[:password])
        session[:teacher_id] = teacher.id  #adds a new key value pair to session hash
        flash[:success] = "User is succesfully created.Please log in to system."
        redirect "/plans"   # this route will be created in controllers. 
    end


end