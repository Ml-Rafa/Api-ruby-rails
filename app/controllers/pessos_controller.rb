class PessosController < ApplicationController
  before_action :set_pesso, only: [:show, :update, :destroy]

  # GET /pessos
  def index
    @pessos = Pesso.all

    render json: @pessos
  end

  # GET /pessos/1
  def show
    render json: @pesso
  end

  # POST /pessos
  def create
    @pesso = Pesso.new(pesso_params)

    if @pesso.save
      render json: @pesso, status: :created, location: @pesso
    else
      render json: @pesso.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pessos/1
  def update
    if @pesso.update(pesso_params)
      render json: @pesso
    else
      render json: @pesso.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pessos/1
  def destroy
    @pesso.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pesso
      @pesso = Pesso.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pesso_params
      params.require(:pesso).permit(:nome, :email, :idade)
    end
end
