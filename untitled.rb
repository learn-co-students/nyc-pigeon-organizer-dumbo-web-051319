  pigeon_names.each do |name|
  	pigeon_list[name] = {}
  end

  data.each do |type, name_hash|
  	name_hash.each do |subtype, names|
  		names.each do |name|
  			if not pigeon_list[name][type]
  				pigeon_list[name][type] = {}
  			end
  		end
    end
  end
end