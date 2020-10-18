class Appointment

    attr_accessor :date, :doctor, :patient 
    # attr_reader 

    @@all = []
    
    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end



end
