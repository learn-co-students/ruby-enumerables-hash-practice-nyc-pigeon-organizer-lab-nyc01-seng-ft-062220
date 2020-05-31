require 'pry'

def nyc_pigeon_organizer(data)
  reorganized_hash = {}
  names = []
  outer_keys = []
  
  data.each {|key, value|
    outer_keys << key 
    value.each {|key2, value2|
      value2.each {|x|
        names << x
      }
    }
  }
  
  names = names.uniq
  
  names.each {|name|
    reorganized_hash[name] = {}
    outer_keys.each {|key| reorganized_hash[name][key] = []}
    data.each {|key1,value1|
      value1.each {|key2, value2|
        if value2.include? name
          reorganized_hash[name][key1] << key2.to_s
        end
      }
    }
  }
  reorganized_hash
end
