
def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.each_with_object({}) do |(key, value), final_array|

    value.each do |inner_key, names|
      names.each do |name|

        #check to see if pigeon name already exists.  If not, create an empty hash
        if !final_array[name]
          final_array[name] = {}
        end

          #check to make sure pigeon_list[:name][:color] exists
          if !final_array[name][key]
            !final_array[name][key] = []
          end
          #push color value to new hash and converts to a string.
          final_array[name][key].push(inner_key.to_s)
      end
    end
  end
end
