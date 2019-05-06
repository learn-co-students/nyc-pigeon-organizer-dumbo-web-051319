require "pry"

def nyc_pigeon_organizer(data=pigeon_data)
  pigeon_names = []
  pigeon_list = {}
  data.each do |type, name_hash|
  	name_hash.each do |subtype, names|
  		names.each do |name|
  			if not pigeon_names.index(name)
  				pigeon_names << name
  			end
  		end
  	end
  end

  pigeon_names.each do |name|
  	pigeon_list[name] = {}
  end

  data.each do |type, name_hash|
  	name_hash.each do |subtype, names|
  		names.each do |name|
  			if not pigeon_list[name][type]
  				pigeon_list[name][type] = []
  			end
  			pigeon_list[name][type] << subtype.to_s
  		end
  	end
	end

	pigeon_list
end