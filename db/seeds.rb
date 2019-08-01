require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
City.destroy_all
Specialty.destroy_all


City.create(name: "Paris")
City.create(name: "Rennes")
City.create(name: "Lyon")
City.create(name: "Bordeaux")
City.create(name: "Marseille")





5.times do
  specialty = Specialty.create(name: Faker::Job.title)
end

20.times do 
  city = City.all.sample
  doctor = Doctor.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Number.number(digits: 5), city: city)
  doctor = Doctor.all.sample
  city = City.all.sample
  patient = Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city: city)
  patient = Patient.all.sample
  city = City.all.sample
  appointment = Appointment.create(doctor: doctor, patient: patient, date: Faker::Date.between(from: 5.years.ago, to: Date.today), city: city)
  specialty = Specialty.all.sample
  doctor_specialty = DoctorSpecialty.create(doctor: doctor, specialty: specialty)
end

