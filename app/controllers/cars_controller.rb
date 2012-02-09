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

  def edit
  end

  def update
    if @car.update_attributes(params[:car])
      flash[:success] = "Car has been updated."
      redirect_to [@owner, @car]
    else
      flash[:error] = "Car has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @car.destroy
    flash[:success] = "Car has been deleted."
    redirect_to owner_path(@owner)
  end

  private
    def find_owner
      @owner = Owner.find(params[:owner_id])
    end

    def find_car
      @car = @owner.cars.find(params[:id])
    end
end
