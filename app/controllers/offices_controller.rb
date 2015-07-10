class OfficesController < ApplicationController

  before_action :ensure_office, only: [:show, :update, :destroy]

  def index
    @offices = Office.all

    render json: @offices
  end

  def show
    render json: @office
  end

  def create
    @office = Office.create(office_params)

    render json: @office, status: :created
  end

  def update
    @office.update_attributes!(office_params)

    render json: @office
  end

  def destroy
    @office.destroy

    render json: {}, status: :no_content
  end

  protected

  def office_params
    params.require(:office).permit(:name, :admin_id)
  end

  def ensure_office
    @office = Office.find(params[:id])
  end

end
