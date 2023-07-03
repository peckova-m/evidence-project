class AktivniPojistenisController < ApplicationController
  before_action :set_aktivni_pojisteni, only: %i[ show edit update destroy ]

  # GET /aktivni_pojistenis or /aktivni_pojistenis.json
  def index
    @aktivni_pojistenis = AktivniPojisteni.all
  end

  # GET /aktivni_pojistenis/1 or /aktivni_pojistenis/1.json
  def show
  end

  # GET /aktivni_pojistenis/new
  def new
    @aktivni_pojisteni = AktivniPojisteni.new
  end

  # GET /aktivni_pojistenis/1/edit
  def edit
  end

  # POST /aktivni_pojistenis or /aktivni_pojistenis.json
  def create
    @aktivni_pojisteni = AktivniPojisteni.new(aktivni_pojisteni_params)

    respond_to do |format|
      if @aktivni_pojisteni.save
        format.html { redirect_to aktivni_pojisteni_url(@aktivni_pojisteni), notice: "Aktivni pojisteni was successfully created." }
        format.json { render :show, status: :created, location: @aktivni_pojisteni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @aktivni_pojisteni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aktivni_pojistenis/1 or /aktivni_pojistenis/1.json
  def update
    respond_to do |format|
      if @aktivni_pojisteni.update(aktivni_pojisteni_params)
        format.html { redirect_to aktivni_pojisteni_url(@aktivni_pojisteni), notice: "Aktivni pojisteni was successfully updated." }
        format.json { render :show, status: :ok, location: @aktivni_pojisteni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @aktivni_pojisteni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aktivni_pojistenis/1 or /aktivni_pojistenis/1.json
  def destroy
    @aktivni_pojisteni.destroy

    respond_to do |format|
      format.html { redirect_to aktivni_pojistenis_url, notice: "Aktivni pojisteni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aktivni_pojisteni
      @aktivni_pojisteni = AktivniPojisteni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aktivni_pojisteni_params
      params.require(:aktivni_pojisteni).permit(:pojistenec_id, :pojisteni_id, :castka)
    end
end
