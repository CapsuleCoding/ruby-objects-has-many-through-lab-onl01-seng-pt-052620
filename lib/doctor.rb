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

    def new_appointment(date, patient)
        Appointment.new(date, patient, self) 
    end 

    def appointments
        Appointment.all.select do |app|
        app.doctor 
        end 
    end 

    def patients 
        appointments.map do |app|
        app.patient 
        end 
    end     
end 
