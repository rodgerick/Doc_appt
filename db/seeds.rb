require 'faker'

5.times do
  doctor = Doctor.create(name: "Dr. #{Faker::FunnyName.two_word_name}")
  
  5.times do
  patient = Patient.create(name: Faker::FunnyName.two_word_name, sickness: Faker::TvShows::NewGirl.quote)

    2.times do
      Appointment.create(patient_id: patient.id, doctor_id: doctor.id, date:'')
    end
  end
end

puts "Seeded!"