def nyc_pigeon_organizer(data)
  final_results = {}
  data.each do |key, value|
    value.each do |inner_key, names|
      names.each do |name|

        if !final_results[name]
          final_results[name] = {}
        end

        if !final_results[name][key]
          final_results[name][key] = []
        end

        final_results[name][key].push(inner_key.to_s)

      end
    end
  end
  final_results
end
