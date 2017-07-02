class PagesController < ApplicationController
  def home
  end

  def contact
  end

  def artists
  end

  def appointments
  	@appointments = Appointment.new(appointment_params)
  end
end
