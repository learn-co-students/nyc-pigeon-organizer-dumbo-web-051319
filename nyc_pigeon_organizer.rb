def nyc_pigeon_organizer(original_data)
  name_hash = {}
  original_data.each do |top_level_hash, bottom_level_hash|
    bottom_level_hash.each do |key, value|
      value.each do |another_value|
        name_hash[another_value] = {}
      end
    end
  end
  name_hash.each do |orgnanized_name, organized_hash|
    original_data.each do |top_level_hash, bottom_level_hash|
      organized_hash[top_level_hash] = []
    end
  end
  name_hash.each do |orgnanized_name, organized_hash|
    organized_hash.each do |organized_stat, organized_value|
      original_data.each do |top_level_hash2, bottom_level_hash2|
          bottom_level_hash2.each do |key, array|
            array.each do |value|
              if value == orgnanized_name
                if organized_stat == top_level_hash2
                  name_hash[orgnanized_name][organized_stat] << key.to_s
                end
              end
            end
          end
      end
    end
  end
end