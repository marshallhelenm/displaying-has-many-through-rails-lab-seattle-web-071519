class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def patient_name
        Patient.find(self.patient_id).name
    end

    def doctor_name
        Doctor.find(self.doctor_id).name
    end

    def time
        self.appointment_datetime.strftime('%B %e, %Y at %H:%M %p')
    end
end
