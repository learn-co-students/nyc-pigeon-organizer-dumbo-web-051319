def nyc_pigeon_organizer(data)
  name_hash = {}
  data.each do |hash1_top, hash1_bottom|
    hash1_bottom.each do |key, value|
      value.each do |next_value|
        name_hash[next_value] = {}
      end
    end
  end
  name_hash.each do |new_name, new_hash|
    data.each do |hash1_top, hash1_bottom|
      new_hash[hash1_top] = []
    end
  end
  name_hash.each do |new_name, new_hash|
    new_hash.each do |new_hash_stat, new_hash_value|
      data.each do |hash2_top, hash2_bottom|
          hash2_bottom.each do |key, array|
            array.each do |value|
              if value == new_name
                if new_hash_stat == hash2_top
                  name_hash[new_name][new_hash_stat] << key.to_s
                end
              end
            end
          end
      end
    end
  end
end
