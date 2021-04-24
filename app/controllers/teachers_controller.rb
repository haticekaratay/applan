class TeachersController < ApplicationController

    get "/signup" do
        erb :"teachers/signup"
    end

    post "/signup" do
        teacher = Teacher.create(params)
        if !teacher.valid?
            flash[:error] = "Invalid user input! Try again."
            redirect "/signup"
        end
        session[:teacher_id] = teacher.id 
        flash[:success] = "User is succesfully created.Please log in to system."
        redirect "/plans" 
    end


end