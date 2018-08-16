class InstituicoesController < ApplicationController
  before_action :set_instituico, only: [:show, :update, :destroy]

  # GET /instituicoes
  def index
    @instituicoes = Instituicoe.all

    render json: @instituicoes
  end

  # GET /instituicoes/1
  def show
    render json: @instituico
  end

  # POST /instituicoes
  def create
    @instituico = Instituicoe.new(instituico_params)

    if @instituico.save
      render json: @instituico, status: :created, location: @instituico
    else
      render json: @instituico.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /instituicoes/1
  def update
    if @instituico.update(instituico_params)
      render json: @instituico
    else
      render json: @instituico.errors, status: :unprocessable_entity
    end
  end

  # DELETE /instituicoes/1
  def destroy
    @instituico.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instituico
      @instituico = Instituicoe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def instituico_params
      params.require(:instituico).permit(:nome, :notageral)
    end
end
