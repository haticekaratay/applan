class PlansController < ApplicationController
    get "/plans" do
        redirect_if_not_logged_in?
        @plans = current_teacher.plans
        erb :"plans/index"
    end

    get "/plans/new" do
        redirect_if_not_logged_in?
        erb :"plans/new"
    end

    post "/plans" do
        redirect_if_not_logged_in?
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
        redirect_if_not_logged_in?
        @plan = Plan.find(params[:id])
        redirect_if_not_authorized
        erb :"plans/show"
    end
    

    get "/plans/:id/edit" do
        @plan = Plan.find(params[:id])
        redirect_if_not_authorized
        erb :"plans/edit"
    end

    patch "/plans/:id" do
        @plan = Plan.find(params[:id])
        redirect_if_not_authorized
        @plan.update(params[:plan_hash])
        redirect "/plans/#{@plan.id}"
    end

    delete "/plans/:id" do
        @plan = Plan.find(params[:id])
        redirect_if_not_authorized
        @plan.destroy
        redirect "/plans"
    end
end