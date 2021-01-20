class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to '/homepage'
        else
            redirect_to new_user_path
        end
    end

 

    def home
        
    end

    private

    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
