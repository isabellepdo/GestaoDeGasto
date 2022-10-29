class AnoImportadoCsvsController < ApplicationController
  before_action :set_ano_importado_csv, only: %i[ show edit update destroy processar ]

  # GET /ano_importado_csvs or /ano_importado_csvs.json
  def index
    @ano_importado_csvs = AnoImportadoCsv.all
  end

  # GET /ano_importado_csvs/1 or /ano_importado_csvs/1.json
  def show
  end

  # GET /ano_importado_csvs/new
  def new
    @ano_importado_csv = AnoImportadoCsv.new
  end

  # GET /ano_importado_csvs/1/edit
  def edit
  end

  # POST /ano_importado_csvs or /ano_importado_csvs.json
  def create
    @ano_importado_csv = AnoImportadoCsv.new(ano_importado_csv_params)

    respond_to do |format|
      if @ano_importado_csv.save
        format.html { redirect_to ano_importado_csv_url(@ano_importado_csv), notice: "Ano importado csv was successfully created." }
        format.json { render :show, status: :created, location: @ano_importado_csv }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ano_importado_csv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ano_importado_csvs/1 or /ano_importado_csvs/1.json
  def update
    respond_to do |format|
      if @ano_importado_csv.update(ano_importado_csv_params)
        format.html { redirect_to ano_importado_csv_url(@ano_importado_csv), notice: "Ano importado csv was successfully updated." }
        format.json { render :show, status: :ok, location: @ano_importado_csv }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ano_importado_csv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ano_importado_csvs/1 or /ano_importado_csvs/1.json
  def destroy
    @ano_importado_csv.destroy

    respond_to do |format|
      format.html { redirect_to ano_importado_csvs_url, notice: "Ano importado csv was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  def processar
    @ano_importado_csv.transaction do
      begin
        @ano_importado_csv.processar_csv

        if @ano_importado_csv.save && @ano_importado_csv.processado == true
          redirect_to ano_importado_csvs_path, notice: 'Arquivo foi processado com sucesso.'
        end
      rescue => exception
        redirect_to ano_importado_csvs_path
        flash[:alert] = "Erro ao processar o Arquivo. #{exception.message}"
        raise ActiveRecord::Rollback
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ano_importado_csv
      @ano_importado_csv = AnoImportadoCsv.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ano_importado_csv_params
      params.require(:ano_importado_csv).permit(:processado, :arquivo)
    end
end
