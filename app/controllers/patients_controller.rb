require_relative '../views/patients_view'

class PatientsController
  def initialize(patient_repository, room_repository)
    @patient_repository = patient_repository
    @room_repository = room_repository
    @view = PatientsView.new
    @view_room = RoomsView.new
  end

  def create
    #Dados do patient
    name = @view.ask_name
    age = @view.ask_age

    # List rooms e instancia um novo room
    @view_room.list(@room_repository.all)
    room_id = @view.ask_room_id
    room = @room_repository.find(room_id)

    # Instancia paciente
    patient = Patient.new(name: name, age: age)
    # Coloca paciente dentro do quarto
    room.add_patient(patient)

    # E não se esqueça de salvar o paciente no seu repositório
    @patient_repository.add(patient)
  end

  def list
    patients = @patient_repository.all
    @view.list(patients)
  end
end