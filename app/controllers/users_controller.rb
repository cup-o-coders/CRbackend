class UsersController < ApplicationController
    before_action :authenticate_user, only: :show

    def show
        user = User.find params[:id]
        render json: user
    end

    def create
<<<<<<< HEAD
            user = User.create(user_params)
                if user.valid?
            render json: user
        else
render json: user.errors, status: :unprocessable_entity
=======
        user = User.new(user_params)
        if user.save
            token = Knock::AuthToken.new(payload: { sub: user.id }).token
            payload = {
                user: user,
                jwt: token
            }
            render json: payload, status: 201
        else
            render json: {errors: user.errors}, status: 422
>>>>>>> master
        end
    end

    private
    def user_params
        params.require(:user).permit(:email, :name, :password, :password_confirmation)
    end
end
