#require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here
  names = []
organized_list = {}

data.each do |c_g_l,hash|
  hash.each do |color,names_arr|
    names_arr.each do |name|
      organized_list[name] = {}
    end
  end
end

organized_list.each do |name,name_hash|
  data.each do |c_g_l, hash|
    name_hash[c_g_l] = []
  end
end

  data.each do |c_g_l, hash|
    hash.each do |color, names_arr|
      names_arr.each do |names|
        organized_list[names][c_g_l] << color.to_s
      end
    end
  end
organized_list
end
