class PlansController < ApplicationController
    get "/plans" do
        @plans = Plan.all
        erb :"plans/index"
    end

    get "/plans/new" do
        erb :"plans/new"
    end

    post "/plans" do
        #raise params.inspect
        if params[:title].empty?
            plan = Plan.new(params)
            plan.title = "Missing title"
            plan.teacher = current_teacher
            plan.save
            redirect "/plans/#{plan.id}"
        end
        plan = Plan.new(params)
        plan.teacher = current_teacher
        plan.save
        redirect "/plans/#{plan.id}"
    end

    get "/plans/:id" do
        @plan = Plan.find(params[:id])
        erb :"plans/show"
    end
end