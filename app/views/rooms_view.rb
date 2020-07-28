class RoomsView
  def ask_number
    puts "Enter the room number:"
    return gets.chomp.to_i
  end

  def ask_capacity
    puts "Enter the room capacity:"
    return gets.chomp.to_i
  end

  def list(rooms)
    puts ("-" * 15) + 'Rooms List' + ("-" * 15)
    rooms.each do |room|
      puts "ID: #{room.id} | Room Number #{room.number}: #{room.capacity} patients capacity | Pacients: #{room.patients.map { |p| p.name }.join(', ')}"
    end
    puts ('-' * 30)
  end
end