class UsersController < ApplicationController
    before_action :authenticate_user, only: :show

    def index
        user = User.all
        render json: user
    end

    def show
        user = User.find params[:id]
        render json: user
    end

    def create
        user = User.new(user_params)
        if user.save
            token = Knock::AuthToken.new(payload: { sub: user.id }).token
            puts "token #{token}"
            payload = {
                user: user,
                jwt: token
            }
            puts "#{payload}"
            render json: payload, status: 201
        else
            render json: {errors: user.errors}, status: 422
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
