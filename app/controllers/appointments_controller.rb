class AppointmentsController < ApplicationController

	def index
		@appointments = Appointment.new
	end
  
	def new
		@appointments = Appointment.new(appointment_params)
	end

	def create
		@appointments = Appointment.new(appointment_params)
		respond_to do |format|
			if @appointments.save
				AppointmentMailer.appointment_email(@appointments).deliver!
				format.html { redirect_to contact_path, notice: "Appointment was submitted to Salt Lake Tattoo Co. Looking forward to chatting!"}
			else
				format.html { redirect_to ppointments_path}
			end
		end
	end

private

	def appointment_params
		params.require(:appointment).permit(:name, :email, :phone_number, :body, :selected_day, :image)
	end
end
	