class Api::AppointmentsController < ApplicationController
  before_action :set_appointment, only[:show, :destroy]
  
  def index
    appointments = Appointment.full_info
    render json: appointments
  end
  
  def show
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if appointment.save
      render json: @appointment
    else
      render json: {error: @appointment.errors}, status: 422
    end
  end

  def destroy
    @appointment.destroy
    render json: @appointment
  end
  
  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end
  
  def appointment_params
    params.require(:appointment).permit(:appointment, :doctor_id, :patient_id)
  end
  
end
