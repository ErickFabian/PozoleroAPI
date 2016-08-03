class ClientsController < ApplicationController
  include ClientsDoc

  before_action :set_client, only: [:show, :update, :destroy]

  def index
    @clients = Client.all
    render json: @clients
  end

  def show
    render json: @client
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      render json: @client, status: :created
    else
      render json: { errors: @client.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @client.update(client_params)
      render json: @client
    else
      render json: { errors: @client.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @client.destroy
    render json: {}
  end

  private

  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(
      *policy(@client || Client).permitted_attributes)
  end
end