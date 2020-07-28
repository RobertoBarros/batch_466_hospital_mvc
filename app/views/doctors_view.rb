class DoctorsView
  def ask_name
    puts "Enter doctor name:"
    return gets.chomp.strip
  end

  def list(doctors)
    puts ("-" * 15) + 'Doctors List' + ("-" * 15)
    doctors.each do |doctor|
      puts "Doctor: #{doctor.name}"
    end
    puts ('-' * 30)
  end


end