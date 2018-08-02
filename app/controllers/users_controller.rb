class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        @user = User.create
        render json: @user
    end

    def user_params
        params.require(:name).permit(:name, :email, :password)
    end

    def edit
    end

    def destroy
    end
end
