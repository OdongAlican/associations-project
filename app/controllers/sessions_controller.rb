class SessionsController < ApplicationController

    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:success] = 'Invalid email/password combination'
          redirect_to users_path
        else
          flash.now[:danger] = 'Invalid email/password combination'
          render 'new'
        end
      end
end