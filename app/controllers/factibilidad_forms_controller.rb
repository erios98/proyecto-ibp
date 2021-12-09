class FactibilidadFormsController < ApplicationController
  before_action :set_factibilidad_form, only: %i[ show edit update destroy ]

  # GET /factibilidad_forms or /factibilidad_forms.json
  def index
    @factibilidad_forms = FactibilidadForm.all
  end

  # GET /factibilidad_forms/1 or /factibilidad_forms/1.json
  def show
  end

  # GET /factibilidad_forms/new
  def new
    @factibilidad_form = FactibilidadForm.new
  end

  # GET /factibilidad_forms/1/edit
  def edit
  end

  # POST /factibilidad_forms or /factibilidad_forms.json
  def create
    @factibilidad_form = FactibilidadForm.new(factibilidad_form_params)

    respond_to do |format|
      if @factibilidad_form.save
        format.html { redirect_to @factibilidad_form, notice: "Factibilidad form was successfully created." }
        format.json { render :show, status: :created, location: @factibilidad_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @factibilidad_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factibilidad_forms/1 or /factibilidad_forms/1.json
  def update
    respond_to do |format|
      if @factibilidad_form.update(factibilidad_form_params)
        format.html { redirect_to @factibilidad_form, notice: "Factibilidad form was successfully updated." }
        format.json { render :show, status: :ok, location: @factibilidad_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @factibilidad_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factibilidad_forms/1 or /factibilidad_forms/1.json
  def destroy
    @factibilidad_form.destroy
    respond_to do |format|
      format.html { redirect_to factibilidad_forms_url, notice: "Factibilidad form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factibilidad_form
      @factibilidad_form = FactibilidadForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def factibilidad_form_params
      params.require(:factibilidad_form).permit(:titulo, :estado, :archivo)
    end
end
