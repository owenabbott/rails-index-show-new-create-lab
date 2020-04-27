class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all 
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        @coupon = Coupon.new
    end

    def create
        coupon_params = params.require(:coupon).permit(:store, :coupon_code)
        @coupon = Coupon.create(coupon_params)
        redirect_to @coupon
    end
end
