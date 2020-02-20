class AppointmentController < ApplicationController
    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new
        @appointment = Appointment.new
    end

    def create 
        @appointment = Appointment.new(appointment_params)

            if(@appointment.save)
                redirect_to @appointment
            else
                render 'new'
            end
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to appointment_index_path   
    end

    private def appointment_params
        params.require(:appointment).permit(:physician_id, patient_attributes: [:name])
    end
end
