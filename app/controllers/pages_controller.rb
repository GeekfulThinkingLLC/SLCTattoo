class PagesController < ApplicationController
  def home
  end

  def contact
  	@appointment = Appointment.new
  end

  def artists
  end

end
