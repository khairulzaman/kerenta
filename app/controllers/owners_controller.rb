class OwnersController < ApplicationController
  before_filter :find_owner, :only => [:show, :edit, :update, :destroy]
  def index
  end

	def show
	end
  
  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(params[:project])
		@owner.save
      flash[:success] = "Owner has been created."
      redirect_to @owner
  end

  private
  def find_owner
    @owner = Owner.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The owner you were looking for could not be found."
    redirect_to owners_path
  end
end
