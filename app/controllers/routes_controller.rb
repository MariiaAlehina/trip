class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]
  def index
    @routes = Route.all
  end

  def show
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.create(route_params)

    if @route
      redirect_to route_path(@route)
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @route.update(route_params)
      redirect_to @route
    else
      render :edit
    end
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  private
  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:title)
  end
end