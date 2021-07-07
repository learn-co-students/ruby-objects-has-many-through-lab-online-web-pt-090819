class Patient 
  attr_accessor :name 
  @@all = []
  
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
    new_appt.patient = self 
    new_appt 
  end
  
  def appointments 
    Appointment.all.select { |appt| appt.patient == self }
  end
  
  def doctors
    appointments.map do |appt|
      appt.doctor 
    end
  end
  
  def self.all 
    @@all 
  end
  
end 