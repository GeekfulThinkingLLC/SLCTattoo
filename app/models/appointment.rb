class Appointment < ApplicationRecord

	validate_presence_of :name, :email, :phone_number, :body, :selected_day
end
