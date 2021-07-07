class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def add_appointment(appointment, name)
    Patient.new(name,self,appointment)
  end
  
  def patients
    Patient.all.select {|patient| patient.doctor == self}
  end
  
  def appointment
    patient.map{|patient| patient.appointment}
  end
end