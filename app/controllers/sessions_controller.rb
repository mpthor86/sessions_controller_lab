class SessionsController < ApplicationController
    def create
        if params[:name] && !params[:name].blank?
        session[:name] = params[:name]
            redirect_to :root
        else
        redirect_to :login
        end
    end
    
    def destroy
        if session[:name]
            session.delete :name
        else
            redirect_to :root
        end
    end
end