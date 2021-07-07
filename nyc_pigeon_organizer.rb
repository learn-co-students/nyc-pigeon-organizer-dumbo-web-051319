def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |attributes, hash|
    hash.each do |details, name_array|
      name_array.each do |name|
      pigeon_hash[name] = {color: [], gender:[], lives: []}
      end
    end
  end
  data[:color].each do |color, name_array|
    name_array.each do |name|
      pigeon_hash[name][:color].push(color.to_s)
    end
  end
  data[:gender].each do |gender, name_array|
    name_array.each do |name|
      pigeon_hash[name][:gender].push(gender.to_s)
    end
  end
  data[:lives].each do |place, name_array|
    name_array.each do |name|
      pigeon_hash[name][:lives].push(place.to_s)
    end
  end
  pigeon_hash
end
