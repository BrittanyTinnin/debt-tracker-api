class Api::UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]

    def index

    end

    def show

    end

    def create

    end

    def update

    end

    def destroy

    end

    private

    def set_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        params.require(:user).permit(:email, :first_name, :last_name, :password)
    end
end