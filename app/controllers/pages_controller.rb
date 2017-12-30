class PagesController < ApplicationController
  def home
    @artist = Artist.new
    @artists = Artist.all
  end

  def contact
  	@appointment = Appointment.new
  end

  def artists
  end

end
