class Api::ChargesController < ApiController
  before_action :set_api_charge, only: [:show, :edit, :update, :destroy]

  # GET /api/charges
  # GET /api/charges.json
  def index
    @api_charges = Api::Charge.all
  end

  # GET /api/charges/1
  # GET /api/charges/1.json
  def show
  end

  # GET /api/charges/new
  def new
    @api_charge = Api::Charge.new
  end

  # GET /api/charges/1/edit
  def edit
  end

  # POST /api/charges
  # POST /api/charges.json
  def create
    @api_charge = Api::Charge.new(api_charge_params)

    respond_to do |format|
      if @api_charge.save
        format.html { redirect_to @api_charge, notice: 'Charge was successfully created.' }
        format.json { render :show, status: :created, location: @api_charge }
      else
        format.html { render :new }
        format.json { render json: @api_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api/charges/1
  # PATCH/PUT /api/charges/1.json
  def update
    respond_to do |format|
      if @api_charge.update(api_charge_params)
        format.html { redirect_to @api_charge, notice: 'Charge was successfully updated.' }
        format.json { render :show, status: :ok, location: @api_charge }
      else
        format.html { render :edit }
        format.json { render json: @api_charge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api/charges/1
  # DELETE /api/charges/1.json
  def destroy
    @api_charge.destroy
    respond_to do |format|
      format.html { redirect_to api_charges_url, notice: 'Charge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_charge
      @api_charge = Api::Charge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_charge_params
      params.require(:api_charge).permit(:amount, :currency, :source, :description)
    end
end
