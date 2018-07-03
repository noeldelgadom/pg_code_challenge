class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  before_action :set_gender_and_conditions, only: [:new, :edit]

  def index
    @clients = Client.all
  end

  def show
  end

  def new
    @client     = Client.new
  end

  def edit
  end

  def create
    @client = Client.create!(client_params)

    if @client
      redirect_to @client, notice: 'Client was successfully created.'
    else
      render :new
    end
  end

  def update
    if @client.update(client_params)
      redirect_to @client, notice: 'Client was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_url, notice: 'Client was successfully destroyed.'
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end

    def set_gender_and_conditions
      @genders    = Gender.all
      @conditions = Condition.all
    end

    def client_params
      {
        name:         params[:client][:name],
        age:          params[:client][:age],
        gender_id:    params[:client][:gender],
        condition_id: params[:client][:condition]
      }
    end
end
