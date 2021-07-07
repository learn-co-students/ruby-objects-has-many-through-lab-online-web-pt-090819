class Appointment
  attr_accessor :name

  def initialize(name)
    @name = name
    end
  
  def patient
    patient.all.select{|patient| patient.appointment == self}
  end
  
  def doctor
    patient.map{|patient| patient.doctor}
  end
  
end