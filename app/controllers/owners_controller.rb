class OwnersController < ApplicationController
  before_filter :find_owner, :only => [:show, :edit, :update, :destroy]

  def index
    @owners = Owner.all
  end

	def show
	end

  def edit
  end
  
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params[:owner])
		if @owner.save
      flash[:success] = "Owner has been created."
      redirect_to @owner
    else
      flash[:error] = "Owner has not been created."
      render :action => "new"
    end
  end
  
  def update
    if @owner.update_attributes(params[:owner])
      flash[:success] = "Owner has been updated."
      redirect_to @owner
    else
      flash[:error] = "Owner has not been updated."
      render :action => "edit"
    end
  end

  def destroy
    @owner.destroy
    flash[:success] = "Owner has been deleted."
    redirect_to owners_path
  end

  private
  def find_owner
    @owner = Owner.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The owner you were looking for could not be found."
    redirect_to owners_path
  end
end
