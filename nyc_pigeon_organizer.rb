def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  #go through properties |property, values|
  data.each do |key, values|
    #go through attributes |attribute, names|
    values.each do |value, names|
      #go through names |key|
      names.each do |name|

        if !new_hash.has_key?(name)
          new_hash[name] = {}
        end

        if !new_hash[name].has_key?(key)
          new_hash[name][key] = []
        end

        if !new_hash[name][key].include?(value)
          new_hash[name][key] << value.to_s
        end


      end

    end

  end
  new_hash
end
