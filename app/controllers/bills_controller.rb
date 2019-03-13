class BillsController < ApplicationController

    def index
        @bills = Bill.all
        render json: @bills
    end

    def show
        @bill = Bill.find_by(id: params[:id])
        render json: @bill
    end

    def create
        bill = Bill.new(bill_params)
        render json: bill
    end

    private
        def bill_params
            params.require().permit(:name, :phone_number, :website, :amount)
        end

end
