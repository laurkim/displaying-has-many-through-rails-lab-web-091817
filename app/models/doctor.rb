class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments

  def patient_count
    self.patients.size
  end

  def format_appt
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
