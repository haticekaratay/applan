class TeachersController < ApplicationController
    get "/login" do
        erb :"teachers/login"
    end
    
    post "/login" do
        "in post login"
    end

    get "/signup" do
        erb :"teachers/signup"
    end

    post "/signup" do
        "in post signup"
    end
end