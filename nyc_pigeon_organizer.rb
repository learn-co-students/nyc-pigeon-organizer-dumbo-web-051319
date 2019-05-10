require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  sendHash = {}
  
  data.each do |trait, dataHash|
    dataHash.each do |dataKey, dataArray|
      dataArray.each do |name|

        if sendHash.has_key?(name) == false
          sendHash = sendHash.merge( name => {} )
        end

        if sendHash["#{name}"].has_key?(trait) == false 
          sendHash["#{name}"] = sendHash["#{name}"].merge( { trait => [(dataKey.to_s)] } )
        else
          sendHash["#{name}"][trait] << dataKey.to_s  
        end
      end
    end
  end
  sendHash
end