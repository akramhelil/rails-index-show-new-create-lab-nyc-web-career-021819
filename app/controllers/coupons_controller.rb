class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    #code
    render :index
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
  
  def new
    #code
    render :new
  end

  def create
    def create
  @coupon = Coupon.new
  @coupon[:coupon_code] = params[:coupon][:coupon_code]
  @coupon[:store] = params[:coupon][:store]
  @coupon.save
  redirect_to coupon_path(@coupon)
end
  end





end
