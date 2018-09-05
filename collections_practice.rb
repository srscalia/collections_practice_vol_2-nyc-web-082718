require 'pry'

def begins_with_r(array)
  array.all? {|word| word[0]=="r"}
end

def contain_a(array)
  array.select {|word| word.include? "a"}
end

def first_wa(array)
  array.find do |word|
    "wa".include? word[0,1]
  end
end

def remove_non_strings(array)
  array.delete_if {|word| word.class != String}
end

def count_elements(array)
  array.each do |hash|
    hash[:count]=0
    name = hash[:name]
    array.each do |hash2|
      #binding.pry
      if hash2[:name] == name
        hash[:count]+=1
      end
    end
  end.uniq
end

def merge_data(keys, data)
  data[0].values.map.with_index {|v, i| keys[i].merge(v)}
end
#source: https://stackoverflow.com/questions/37445550/how-to-combines-two-nested-data-structures-into-one

def find_cool(cool)
  return_array=[]
  cool.each do |hash|
    hash.each do |k, v|
      if v=="cool"
        return_array<<hash
      end
    end
  end
  return_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school, location|
    location.each do |k, v|
      if new_hash[v].nil?
        new_hash[v]=[]
        new_hash[v]<<school
      else
        new_hash[v]<<school
      end
    end
  end
  new_hash
end
