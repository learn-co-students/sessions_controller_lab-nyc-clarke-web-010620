class SessionsController < ApplicationController

    def new
    end

    def destroy
        session.destroy
        redirect_to '/login'
    end

    def create
        session[:name] = params[:name]
        # byebug
        if !session[:name] || session[:name] == ""
            redirect_to '/login'
        else
            redirect_to '/'
        end
    end

end