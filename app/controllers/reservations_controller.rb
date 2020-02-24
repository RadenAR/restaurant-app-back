class ReservationsController < ProtectedController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /reservations
  def index
    @reservations = Reservation.all

    render json: @reservations
  end

  # GET /reservations/1
  def show
    render json: @reservation
  end

  # POST /reservations
  def create
    @reservation = current_user.reservations.build(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = current_user.reservations.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def reservation_params
      params.require(:reservation).permit(:people, :date, :time, :restaurant_id)
    end
end
