class Api::V1::StoresController < ApplicationController
  before_action :set_api_v1_store, only: [:show, :update, :destroy]

  # GET /api/v1/stores
  # GET /api/v1/stores.json
  def index
    @api_v1_stores = Store.all

    render json: @api_v1_stores
  end

  # GET /api/v1/stores/1
  # GET /api/v1/stores/1.json
  def show
    render json: @api_v1_store
  end

  # POST /api/v1/stores
  # POST /api/v1/stores.json
  def create
    @api_v1_store = Store.new(api_v1_store_params)

    if @api_v1_store.save
      render json: @api_v1_store, status: :created
    else
      render json: @api_v1_store.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/stores/1
  # PATCH/PUT /api/v1/stores/1.json
  def update
    @api_v1_store = Store.find(params[:id])

    if @api_v1_store.update(api_v1_store_params)
      head :no_content
    else
      render json: @api_v1_store.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/stores/1
  # DELETE /api/v1/stores/1.json
  def destroy
    @api_v1_store.destroy

    head :no_content
  end

  private

    def set_api_v1_store
      @api_v1_store = Store.find(params[:id])
    end

    def api_v1_store_params
      params.require(:store).permit(:address, :phone, :name, :latitude, :longitude)
    end
end
