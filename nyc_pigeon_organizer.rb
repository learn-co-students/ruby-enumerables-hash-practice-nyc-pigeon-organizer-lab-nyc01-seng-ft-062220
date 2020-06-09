require "pry"

def nyc_pigeon_organizer(data)
  
  final_list = data.each_with_object({}) do |(key, value), final_array|
    value.each do |inner_key, inner_value|
      inner_value.each do |name|
        if !final_array[name]
          final_array[name] = {}
        end
        if !final_array[name][key]
          !final_array[name][key] = []
        end  
        final_array[name][key].push(inner_key.to_s)
      end
    end
  end  
  final_list
end
