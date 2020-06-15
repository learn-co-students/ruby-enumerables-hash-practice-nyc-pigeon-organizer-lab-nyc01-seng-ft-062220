def nyc_pigeon_organizer(data)
  data.each_with_object ({}) do |(key, value), new_data|
    value.each do |attributes_key, names|
      names.each do |name|
        if !new_data[name]
          new_data[name] = {}
        end
        if !new_data[name][key]
          !new_data[name][key] = []
        end
        new_data[name][key].push(attributes_key.to_s)
    end
  end
end
end
