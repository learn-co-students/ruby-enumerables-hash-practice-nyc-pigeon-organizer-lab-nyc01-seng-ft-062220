def nyc_pigeon_organizer(data)

  result = data.each_with_object({}) do |(key, value), final_output|
    value.each do |key2, value2|
      value2.each do |name|
        if !final_output[name]
          final_output[name] = {}
        end
        if !final_output[name][key]
          final_output[name][key] = []
        end
        final_output[name][key].push(key2.to_s)
      end
    end
  end 
  result
end