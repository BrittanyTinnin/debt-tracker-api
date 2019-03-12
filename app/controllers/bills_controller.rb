class BillsController < ApplicationController

    def index
        @bills = Bill.all
    end

    def show
        @bill = Bill.find_by(id: params[:id])
    end

    def create
        bill = Bill.new(bill_params)
    end

    private
        def bill_params
            params.require().permit(:name, :phone_number, :website, :amount)
        end

end
