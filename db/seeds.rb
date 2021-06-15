# 5.times do
#   doctor = Doctor.create(name: "Dr. #{Faker::FunnyName.two_word_name}")
  
#   5.times do
#   patient = Patient.create(name: Faker::FunnyName.two_word_name, sickness: Faker::TvShows::NewGirl.quote)

#     2.times do
#       Appointment.create(patient_id: patient.id, doctor_id: doctor.id, date: )
#     end
#   end
# end

Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all

require 'faker'

d1 = Doctor.create(name: "Dr. #{Faker::FunnyName.two_word_name}")
d2 = Doctor.create(name: "Dr. #{Faker::FunnyName.two_word_name}")
d3 = Doctor.create(name: "Dr. #{Faker::FunnyName.two_word_name}")
d4 = Doctor.create(name: "Dr. #{Faker::FunnyName.two_word_name}")
d5 = Doctor.create(name: "Dr. #{Faker::FunnyName.two_word_name}")


p1 = Patient.create(name:'Jimmbo', sickness:'the grumblies')
p2 = Patient.create(name:'Sarah', sickness:'blind')
p3 = Patient.create(name:'Jimmbo', sickness:'scrapped knee')
p4 = Patient.create(name:'Karen', sickness:'Wants to speak to a manager')
p5 = Patient.create(name:'Chad', sickness:'alcohol poisoning')


Appointment.create(doctor_id: d1.id, patient_id: p2.id, date: DateTime.now + 3 )
Appointment.create(doctor_id: d5.id, patient_id: p3.id, date: DateTime.now + 7 )
Appointment.create(doctor_id: d3.id, patient_id: p1.id, date: DateTime.now + 1 )
Appointment.create(doctor_id: d2.id, patient_id: p5.id, date: DateTime.now + 6 )
Appointment.create(doctor_id: d4.id, patient_id: p4.id, date: DateTime.now + 6 )

puts "Seeded!"