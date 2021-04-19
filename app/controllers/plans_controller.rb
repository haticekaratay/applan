class PlansController < ApplicationController
    get "/plans" do
        @plans = Plan.all
        erb :"plans/index"
    end

        
end