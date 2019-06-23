pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  new_hash = {}
  data[:gender][:male].each do |name|
    new_hash[name] = {:color => [], :gender => ["male"],:lives => []}
  end
  data[:gender][:female].each do |name|
    new_hash[name] = {:color => [], :gender => ["female"],:lives => []}
  end

  data[:color].each do |color, names_with_color|
    names_with_color.each do |name|
      new_hash[name][:color] << color.to_s
    end
  end

  data[:lives].each do |location, names_with_location|
    names_with_location.each do |name|
      new_hash[name][:lives] << location.to_s
    end
  end


  new_hash
end

puts "#{nyc_pigeon_organizer(pigeon_data)}"