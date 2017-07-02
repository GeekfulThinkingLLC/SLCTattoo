class Appointment < ApplicationRecord

	validates_presence_of :name, :email, :phone_number, :body, :selected_day
end
