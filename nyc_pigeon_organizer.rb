def nyc_pigeon_organizer(data)
  # write your code here!
  list = {}
  data.each do |k, v|
    v.each do |key,value|
      value.each do |name|
        if !list[name]
          list[name] = {}
        end
        if !list[name][k]
          list[name][k] = [key.to_s]
        else
          list[name][k] << key.to_s
        end
      end
    end
  end
  list

end
