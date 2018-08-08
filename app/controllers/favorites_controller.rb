class FavoritesController < ApplicationController
  before_action :authenticate_user

    def index
      # TODO Check that this validates against correct signed in user
      # Pass current user from Authentication
      @favorites = Favorites.where(["user_id = :u", { u: current_user.id }])
      render json: @favorites
    end

    def create

      byebug
      @favorite = Favorites.new(favorite_params)
      @favorite.user_id = current_user.id

      if @favorite.save
        render json: @favorite, status: :created, location: @favorite
      else
        render json: @favorite.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @favorite = Favorites.find(params[:id])
      @favorite.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorites.find(params[:id])
    end

    def favorite_params
      params.require(:favorite).permit(:image_url, :name, :display_address, :display_phone, :rating)
    end
end
