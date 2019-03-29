class Api::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index
        @users = User.all
        render :json @users
    end

    def show
    end

    def create
        @user = User.create(user_params)
        if @user.save
            render :json @user
        end

    end

    def update
    end

    def destroy
        @user.destroy
    end

    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :password)
    end
end