class Api::ChargesController < ApiController
  before_action :set_api_charge, only: [:show, :destroy]

  # GET /api/charges
  # GET /api/charges.json
  def index
    @api_charges = Api::Charge.all
  end

  # GET /api/charges/1
  # GET /api/charges/1.json
  def show
    respond_to do |format|
      if !@api_charge.nil?
        format.json { render :show, status: :ok, location: @api_charge }
      else
        format.json { render :json => {}.to_json, :status => :not_found }
      end
    end
  end

  # POST /api/charges
  # POST /api/charges.json
  def create
    @api_charge = Api::Charge.new(api_charge_params)

    respond_to do |format|
      if @api_charge.save
        format.json { render :show, status: :created, location: @api_charge }
      else
        #format.json { render json, @api_charge.errors, status: :unprocessable_entity }
        format.json { render :json => @api_charge.errors.to_json, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /api/charges/1
  # DELETE /api/charges/1.json
  def destroy
    respond_to do |format|
      if !@api_charge.nil?
        @api_charge.destroy
        format.json { head :no_content }
      else
        format.json { render :json => {}.to_json, :status => :not_found }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_charge
      @api_charge = Api::Charge.find_by_id(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def api_charge_params
      params.require(:api_charge).permit(:amount, :currency, :source, :description)
    end
end
