class ConnectorsController < ApplicationController
  before_action :set_connector, only: %i[ show edit update destroy ]

  # GET /connectors or /connectors.json
  def index
    @connectors = Connector.all
  end

  # GET /connectors/1 or /connectors/1.json
  def show
  end

  # GET /connectors/new
  def new
    @connector = Connector.new
  end

  # GET /connectors/1/edit
  def edit
  end

  # POST /connectors or /connectors.json
  def create
    @connector = Connector.new(connector_params)

    respond_to do |format|
      if @connector.save
        format.html { redirect_to @connector, notice: "Connector was successfully created." }
        format.json { render :show, status: :created, location: @connector }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @connector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /connectors/1 or /connectors/1.json
  def update
    respond_to do |format|
      if @connector.update(connector_params)
        format.html { redirect_to @connector, notice: "Connector was successfully updated." }
        format.json { render :show, status: :ok, location: @connector }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @connector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connectors/1 or /connectors/1.json
  def destroy
    @connector.destroy
    respond_to do |format|
      format.html { redirect_to connectors_url, notice: "Connector was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connector
      @connector = Connector.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def connector_params
      params.require(:connector).permit(:user_id, :course_id)
    end
end
