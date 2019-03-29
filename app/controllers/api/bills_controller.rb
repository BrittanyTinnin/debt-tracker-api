class Api::BillsController < ApplicationController

    # before_action :authentication_user

    def index
        @bills = Bill.all
        render json: @bills
    end

    def show
        @bill = Bill.find_by(id: params[:id])
        render json: @bill
    end

    def create
        @bill = Bill.create(bill_params)
        if @bill.save
            render json: @bill, status: :created
        end
    end

    private
    def bill_params
        params.require(:bill).permit(:name, :phone_number, :website, :due_date, :amount)
    end

end

