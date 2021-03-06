class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def format_appt
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
