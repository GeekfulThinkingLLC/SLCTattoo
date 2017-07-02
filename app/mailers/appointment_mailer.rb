class AppointmentMailer < ApplicationMailer
  default from: 'slctattooco@gmail.com'
 
  def appointment_email(appointment)
    @appointment = appointment
    mail(to: 'trevorhoward2@hotmail.com', subject: 'New Appointment')
    mail(to: 'cody.higginsdev18@gmail.com', subject: 'New Appointment')
  end
end