class ParlamentarsController < ApplicationController
  before_action :set_parlamentar, only: %i[ show edit update destroy ]

  # GET /parlamentars or /parlamentars.json
  def index
    @parlamentars = Parlamentar.all
  end

  # GET /parlamentars/1 or /parlamentars/1.json
  def show
  end

  # GET /parlamentars/new
  def new
    @parlamentar = Parlamentar.new
  end

  # GET /parlamentars/1/edit
  def edit
  end

  # POST /parlamentars or /parlamentars.json
  def create
    @parlamentar = Parlamentar.new(parlamentar_params)

    respond_to do |format|
      if @parlamentar.save
        format.html { redirect_to parlamentar_url(@parlamentar), notice: "Parlamentar was successfully created." }
        format.json { render :show, status: :created, location: @parlamentar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parlamentar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parlamentars/1 or /parlamentars/1.json
  def update
    respond_to do |format|
      if @parlamentar.update(parlamentar_params)
        format.html { redirect_to parlamentar_url(@parlamentar), notice: "Parlamentar was successfully updated." }
        format.json { render :show, status: :ok, location: @parlamentar }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parlamentar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parlamentars/1 or /parlamentars/1.json
  def destroy
    @parlamentar.destroy

    respond_to do |format|
      format.html { redirect_to parlamentars_url, notice: "Parlamentar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parlamentar
      @parlamentar = Parlamentar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parlamentar_params
      params.require(:parlamentar).permit(:nome, :cpf, :cadastro, :carteira_parlamentar, :legislatura, :sigla_uf, :sigla_partido)
    end
end
