require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  dataList = {}
  data.each do |cgl, cglVal|
    cglVal.each do |cglData, pig|
      pig.each do |ele|
        dataList[ele] = {}
      end
    end
  end
  data.each do |cgl, cglVal|
    cglVal.each do |cglData, pig|
      pig.each do |ele|
        dataList[ele][cgl] = []
      end
    end
  end
  #List, pigKey = data, aryEle
  #List, cglKey = data, cglKey
  #List, cglVal = data, aryEleKey
  data.each do |dataCgl, dataCglVal|
    dataCglVal.each do |dataCglKey, dataPig|
      dataPig.each do |value|
        dataList[value][dataCgl] << dataCglKey.to_s
      end
    end
  end
  return dataList
end
