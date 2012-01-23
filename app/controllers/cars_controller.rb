class CarsController < ApplicationController
  before_filter :find_owner
  before_filter :find_car, :only => [:show, :edit, :update, :destroy]

  def new
    @car = @owner.cars.build
  end

  def create
    @car = @owner.cars.build(params[:car])
    if @car.save
      flash[:success] = "Car has been created."
      redirect_to [@owner, @car]
    else
      flash[:error] = "Car has not been created."
      render :action => "new"
    end
  end

  def show
  end

  private
    def find_owner
      @owner = Owner.find(params[:owner_id])
    end

    def find_car
      @car = @owner.cars.find(params[:id])
    end
end
