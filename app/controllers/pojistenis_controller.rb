class PojistenisController < ApplicationController
  before_action :set_pojisteni, only: %i[ show edit update destroy ]

  # GET /pojistenis or /pojistenis.json
  def index
    @pojistenis = Pojisteni.all
  end

  # GET /pojistenis/1 or /pojistenis/1.json
  def show
  end

  # GET /pojistenis/new
  def new
    @pojisteni = Pojisteni.new
  end

  # GET /pojistenis/1/edit
  def edit
  end

  # POST /pojistenis or /pojistenis.json
  def create
    @pojisteni = Pojisteni.new(pojisteni_params)

    respond_to do |format|
      if @pojisteni.save
        format.html { redirect_to pojisteni_url(@pojisteni), notice: "Pojisteni was successfully created." }
        format.json { render :show, status: :created, location: @pojisteni }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pojisteni.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pojistenis/1 or /pojistenis/1.json
  def update
    respond_to do |format|
      if @pojisteni.update(pojisteni_params)
        format.html { redirect_to pojisteni_url(@pojisteni), notice: "Pojisteni was successfully updated." }
        format.json { render :show, status: :ok, location: @pojisteni }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pojisteni.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pojistenis/1 or /pojistenis/1.json
  def destroy
    @pojisteni.destroy

    respond_to do |format|
      format.html { redirect_to pojistenis_url, notice: "Pojisteni was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pojisteni
      @pojisteni = Pojisteni.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pojisteni_params
      params.require(:pojisteni).permit(:nazev)
    end
end
