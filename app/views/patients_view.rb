class PatientsView

  def ask_name
    puts "Enter patient name:"
    return gets.chomp.strip
  end

  def ask_age
    puts "Enter patient age:"
    return gets.chomp.to_i
  end

  def ask_room_id
    puts "Enter room id:"
    return gets.chomp.to_i
  end

  def list(patients)
    puts ("-" * 15) + 'Patients List' + ("-" * 15)
    patients.each do |patient|
      puts "ID: #{patient.id} | Name: #{patient.name} | #{patient.age} years"
    end
    puts ('-' * 30)

  end

end