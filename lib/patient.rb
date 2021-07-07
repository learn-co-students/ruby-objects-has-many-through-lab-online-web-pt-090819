class Patient
  attr_accessor :name, :appointment, :doctor
 @@all = []
 
  def initialize(name, doctor, appointment)
    @name = name
    @appointment = appointments
    @@all << self
  end
 
  def self.all
    @@all
  end

end