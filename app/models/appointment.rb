class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  
  def self.full_info
    appointments = Appointment.all
    appointment.map do |appt|
      {id: appt.id, date: appt.date, doctor: appt.doctor, patient: appt.patient}
  end
end
