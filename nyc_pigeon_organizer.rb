def nyc_pigeon_organizer(data)
  new_pigeons = {}

  data.each do |stats, value|
    value.each do |key, names|
      names.each do |name|
        if new_pigeons[name] == nil
            new_pigeons[name] = {}
        end
          if new_pigeons[name][stats] == nil
            new_pigeons[name][stats] = []
          end
          new_pigeons[name][stats].push(key.to_s)
        end
      end
    end
  new_pigeons
end
