class ProspectosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_prospecto, only: %i[show edit update destroy]

  def index
    @prospectos = Prospecto.all
  end

  def show; end

  def new
    @prospecto = Prospecto.new
  end

  def create
    @prospecto = Prospecto.new(prospecto_params)
    @prospecto.user = current_user

    if @prospecto.save
      redirect_to prospecto_path(@prospecto)
    else
      flash[:alert] = "Por favor verifica los campos con errores"
      render :new
    end
  end

  def edit; end

  def update
    @prospecto.update(prospecto_params)

    if @prospecto.save
      redirect_to prospecto_path(@prospecto)
    else
      render :edit
    end
  end

  def destroy
    @prospecto.destroy

    redirect_to root_path
  end

  private

  def set_prospecto
    @prospecto = Prospecto.find(params[:id])
  end

  def prospecto_params
    params.require(:prospecto).permit(:first_name, :last_name, :phone, :email, :status)
  end
end
