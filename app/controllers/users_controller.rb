class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: user.errors, status: :unprocessable_entity
        end
    end

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end

    def edit
    end

    def destroy
    end
end
