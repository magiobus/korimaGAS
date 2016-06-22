class StationsController < ApplicationController
  before_action :set_station, only: [:show, :edit, :destroy]
  before_action :require_admin, except: [:index, :update, :report]

  def index
    @stations = Station.all.order(updated_at: :desc)
  end

  def new
    @station = Station.new
  end

  def create
    @station = Station.new station_params
    if @station.save
      flash[:success] = 'Tu gasolinera ha sido creada'
      redirect_to stations_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @station.update station_params
      flash[:success] = 'Tu gasolinera ha sido actualizada'
      redirect_to stations_path
    else
      render :edit
    end
  end

  def destroy
    if @station.destroy
      flash[:danger] = 'Tu gasolinera ha sido destruida.'
    else
      flash[:warning] = 'Tu gasolinera no pudo ser destruida.'
    end

    redirect_to stations_path
  end

  def report
  end


  private

  def station_params
    params.require(:station).permit(:name, :street, :lat, :lng, :phone, :gas, :open)
  end

  #simple encapsulation to not write this line all the time in required actions
  def set_station
    @station = Station.find(params[:id])
  end

  def require_admin
    return if user_signed_in? && current_user.admin?
    redirect_to root_path
  end

end
