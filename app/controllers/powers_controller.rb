class PowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  before_action :set_power, only: %i[ show update destroy ]

  # GET /powers
  def index
    powers = Power.all

    render json: powers, except: [:created_at, :updated_at]
  end

  # GET /powers/1
  def show
    render json: @power, except: [:created_at, :updated_at]
  end

  # POST /powers
  def create
    @power = Power.new(power_params)

    if @power.save
      render json: @power, status: :created, location: @power
    else
      render json: @power.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /powers/1
  def update
    if @power.update(power_params)
      render json: @power, except: [:created_at, :updated_at]
    else
      render json: {error: "Power not found"}, status: :not_found
      # render json: @power.errors, status: :unprocessable_entity
    end
  end

  # DELETE /powers/1
  def destroy
    @power.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power
      @power = Power.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def power_params
      params.require(:power).permit(:name, :description)
    end
    private

    def render_not_found_response
        render json: {error: "Power not found"}, status: :not_found
    end
end
