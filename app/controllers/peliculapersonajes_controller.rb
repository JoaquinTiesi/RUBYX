class PeliculapersonajesController < ApplicationController
  before_action :set_peliculapersonaje, only: %i[ show update destroy ]

  # GET /peliculapersonajes
  def index
    @peliculapersonajes = Peliculapersonaje.all

    render json: @peliculapersonajes
  end

  # GET /peliculapersonajes/1
  def show
    render json: @peliculapersonaje
  end

  # POST /peliculapersonajes
  def create
    @peliculapersonaje = Peliculapersonaje.new(peliculapersonaje_params)

    if @peliculapersonaje.save
      render json: @peliculapersonaje, status: :created, location: @peliculapersonaje
    else
      render json: @peliculapersonaje.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /peliculapersonajes/1
  def update
    if @peliculapersonaje.update(peliculapersonaje_params)
      render json: @peliculapersonaje
    else
      render json: @peliculapersonaje.errors, status: :unprocessable_entity
    end
  end

  # DELETE /peliculapersonajes/1
  def destroy
    @peliculapersonaje.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peliculapersonaje
      @peliculapersonaje = Peliculapersonaje.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def peliculapersonaje_params
      params.require(:peliculapersonaje).permit(:personaje_id, :pelicula_id)
    end
end
