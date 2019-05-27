def nyc_pigeon_organizer(data)
  new_hash = {}  
  data.each do |data_type, attribute|
    attribute.each do |info, list|
      list.each do |name|
        if !new_hash.keys.include?(name)
          new_hash[name] = {}
        end

          if !new_hash[name].keys.include?(data_type)
            new_hash[name][data_type] = []
          end

           new_hash[name][data_type] = new_hash[name][data_type]<<info.to_s
      end
    end
  end
  new_hash
  # write your code here!
end