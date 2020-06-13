
require 'pry'


def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {} #to transform a hash into a new hash, we must create an empty hash
  data.each do |key, value| #must pass through 'data', which is a hash (colors, gender, livs) that has a hash nested inside (qualities of colors etc) , and an array of names nested in that hash.
    
    value.each do |new_value, names| #within data, iterate over the value (colors first, then gender, lives) and the array of names.
    
      names.each do |name| #within values, iterate over each name in each array
        if !new_hash[name] #if the name in the new hash does not already exist,
          new_hash[name] = {} #then create the hash with the new name
        end
        if !new_hash[name][key] #if the new key does not exist within the name in the new hash
          new_hash[name][key] = [] #then create an empty array

        end
        new_hash[name][key] << new_value.to_s #add the new value to the key in the new hash - convert to symbol
      end
    end
  end
  new_hash #return new hash
end
