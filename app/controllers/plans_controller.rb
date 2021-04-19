class PlansController < ApplicationController
    get "/plans" do
        @plans = Plan.all
        erb :"plans/index"
    end

    get "/plans/new" do
        erb :"plans/new"
    end

    post "/plans" do
    end
end