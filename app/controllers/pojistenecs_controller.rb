class PojistenecsController < ApplicationController
  before_action :set_pojistenec, only: %i[ show edit update destroy ]

  # GET /pojistenecs or /pojistenecs.json
  def index
    @pojistenecs = Pojistenec.all
  end

  # GET /pojistenecs/1 or /pojistenecs/1.json
  def show
  end

  # GET /pojistenecs/new
  def new
    @pojistenec = Pojistenec.new
  end

  # GET /pojistenecs/1/edit
  def edit
  end

  # POST /pojistenecs or /pojistenecs.json
  def create
    @pojistenec = Pojistenec.new(pojistenec_params)

    respond_to do |format|
      if @pojistenec.save
        format.html { redirect_to pojistenec_url(@pojistenec), notice: "Pojistenec was successfully created." }
        format.json { render :show, status: :created, location: @pojistenec }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pojistenec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pojistenecs/1 or /pojistenecs/1.json
  def update
    respond_to do |format|
      if @pojistenec.update(pojistenec_params)
        format.html { redirect_to pojistenec_url(@pojistenec), notice: "Pojistenec was successfully updated." }
        format.json { render :show, status: :ok, location: @pojistenec }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pojistenec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pojistenecs/1 or /pojistenecs/1.json
  def destroy
    @pojistenec.destroy

    respond_to do |format|
      format.html { redirect_to pojistenecs_url, notice: "Pojistenec was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pojistenec
      @pojistenec = Pojistenec.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pojistenec_params
      params.require(:pojistenec).permit(:jmeno, :prijmeni, :datum_narozeni, :telefon, :email, :ulice, :mesto)
    end
end
