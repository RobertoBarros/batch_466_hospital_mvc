class Room
  attr_reader :number, :capacity
  attr_accessor :id, :patients

  def initialize(attributes = {})
    @id = attributes[:id]
    @number = attributes[:number]
    @capacity = attributes[:capacity] || 0
    @patients = attributes[:patients] || []
  end

  def add_patient(patient)
    @patients << patient # Coloca o patient dentro do array
    patient.room = self # Coloca a instância de room dentro de patient
  end

end
