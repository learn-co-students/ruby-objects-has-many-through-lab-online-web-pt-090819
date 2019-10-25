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

  def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end

  def appointments
    Appointment.all.select {|apoint| apoint.doctor == self}
  end

  def patients
    appointments.map {|appoint| appoint.date}
  end


end