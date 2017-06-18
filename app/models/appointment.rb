class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def appointment_time
    appointment_datetime.strftime("%B %d, %Y") + " at " + appointment_datetime.strftime("%H:%M")
  end

  def doctor_name
    doctor.name
  end

  def patient_name
    patient.name
  end
end
