class JuegosController < ApplicationController
  before_action :set_juego, only: [:show, :update, :destroy]

  # GET /juegos
  def index
    @juegos = Juego.all

    render json: @juegos
  end

  # GET /juegos/1
  def show
    render json: @juego
  end

  # POST /juegos
  def create
    @juego = Juego.new(juego_params)

    if @juego.save
      render json: @juego, status: :created, location: @juego
    else
      render json: @juego.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /juegos/1
  def update
    if @juego.update(juego_params)
      render json: @juego
    else
      render json: @juego.errors, status: :unprocessable_entity
    end
  end

  # DELETE /juegos/1
  def destroy
    @juego.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_juego
      @juego = Juego.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def juego_params
      params.require(:juego).permit(:user_id, :perfile_id, :resultado_id, :nombre_usuario, :ejercicioA, :ejercicioB, :ejercicioC, :ejercicioD, :ejercicioE)
    end
end
