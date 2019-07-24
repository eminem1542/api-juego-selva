class TiketsController < ApplicationController
  before_action :set_tiket, only: [:show, :update, :destroy]

  # GET /tikets
  def index
    @tikets = Tiket.all

    render json: @tikets
  end

  # GET /tikets/1
  def show
    render json: @tiket
  end

  # POST /tikets
  def create
    @tiket = Tiket.new(tiket_params)

    if @tiket.save
      render json: @tiket, status: :created, location: @tiket
    else
      render json: @tiket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tikets/1
  def update
    if @tiket.update(tiket_params)
      render json: @tiket
    else
      render json: @tiket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tikets/1
  def destroy
    @tiket.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiket
      @tiket = Tiket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tiket_params
      params.require(:tiket).permit(:user_id, :perfile_id, :nombre_usuario, :email, :ejercicio_ecena, :mensaje_error)
    end
end
