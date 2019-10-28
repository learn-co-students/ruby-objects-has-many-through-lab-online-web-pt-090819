class Appointment
  
  attr_accessor :time, :doctor, :patient
  @@all =[]
  def initialize (time, patient, doctor)
    @time= time
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  
end
