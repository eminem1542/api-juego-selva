class PerfilesController < ApplicationController
  before_action :set_perfile, only: [:show, :update, :destroy]

  # GET /perfiles
  def index
    @perfiles = Perfile.all

    render json: @perfiles
  end

  # GET /perfiles/1
  def show
    render json: @perfile
  end

  # POST /perfiles
  def create
    @perfile = Perfile.new(perfile_params)

    if @perfile.save
      render json: @perfile, status: :created, location: @perfile
    else
      render json: @perfile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /perfiles/1
  def update
    if @perfile.update(perfile_params)
      render json: @perfile
    else
      render json: @perfile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /perfiles/1
  def destroy
    @perfile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfile
      @perfile = Perfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def perfile_params
      params.require(:perfile).permit(:user_id, :nombre_usuario, :edad)
    end
end
