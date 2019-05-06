def nyc_pigeon_organizer(data)
  properties = []
  colors = []
  genders = []
  locations = []
  birds = []
  pigeon_list = {}

  data.each { |property, info|
    properties << property

    info.each { |feature, values|
      if (property == :color)
        colors << feature
      elsif property == :gender
        genders << feature
      elsif property == :lives
        locations << feature
      end

      values.each { |bird|
        if (birds.include? bird)
          # do nothing
        else
          birds << bird
        end
      }
    }
  }

  birds.each { |bird|
    pigeon_list[bird] = {}
  }

  pigeon_list.each { |bird, stats|
    properties.each { |prop|
      stats[prop] = []
    }
  }

  def add_feature(data, bird, pigeon_list)
    data.each { |property, info|
      info.each { |feature, values|
        if (values.include? bird)
          pigeon_list[bird][property] << feature.to_s
          pigeon_list[bird][property].uniq!
        end
      }
    }
  end

  for bird in birds
    properties.each { |property|
      case property
      when :color
        add_feature(data, bird, pigeon_list)
      when :gender
        add_feature(data, bird, pigeon_list)
      when :lives
        add_feature(data, bird, pigeon_list)
      end
    }
  end

  pigeon_list.each { |bird, stats|
    stats.each { |property, features| }
  }

  #   print properties
  #   puts ""; print "\n"
  #   print colors
  #   puts ""; print "\n"
  #   print genders
  #   puts ""; print "\n"
  #   print locations
  #   puts ""; print "\n"
  #   print birds
  #   puts ""; print "\n"

  #   pp pigeon_list
  #   puts ""; print "\n"

  return pigeon_list
end