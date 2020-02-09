class SessionsController < ApplicationController
    before_action :current_user
    skip_before_action :current_user, only: [:login]

    def new
    end

    def homepage
        
    end

    def create
        session[:name] = params[:name]
        if !session[:name] || session[:name] == ""
            redirect_to '/login'
        else
            redirect_to '/homepage'
        end
    end

    def destroy
        if session[:name]
            session.destroy
        end
        redirect_to '/login'
    end


end