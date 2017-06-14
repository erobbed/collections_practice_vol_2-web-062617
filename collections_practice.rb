require "pry"

def begins_with_r(array)
  first_letter = []
  array.each do |i|
    first_letter.push(i[0])
    end
  if first_letter.uniq.join == "r"
    return true
  else
    return false
  end
end

def contain_a(array)
  only_a = []
  array.each do |i|
    element_array = i.split("")
    if element_array.include?("a")
       only_a << (element_array.join)
    end
  end
  only_a
end

def first_wa(array)
  only_wa = []
  array.each do |i|
    if i[0..1] == ("wa")
       only_wa << i
    end
  end
  only_wa.first
end

def remove_non_strings(array)
  array.each do |element|
    if element.class != String
      array.delete(element)
    end
  end
  array.each do |element|
    if element.class != String
      array.delete(element)
    end
  end
end


def count_elements(array_of_hashes)
  count = array_of_hashes.each do |hash|
    hash[:count] = array_of_hashes.count(hash)
  end
  hash_count = count.uniq do |hash|
    hash[:name]
  end
  #binding.pry
end

def merge_data(key, data)
  array = []
  key.each do |person_name|
    name = person_name[:first_name]
    key = person_name.keys[0]
    hash = {key => name}
  data.each do |attributes|
    new_hash = hash.merge(attributes[name])
    array.push(new_hash)
    end
  end
  #binding.pry
  array
end

def find_cool(arg)
  array = []
  arg.each do |hash|
    hash.each do |key, value|
      if hash[:temperature] == "cool"
        array << hash
      end
    end
  end
  array.uniq
end

def organize_schools(schools)
  new_hash = Hash.new {|h, k| h[k] = []}

  schools.each do |school, location_data|
    location_data.map do |location, city|
      if city == "NYC"
        new_hash["NYC"] << school
        #binding.pry
      elsif city == "SF"
        new_hash["SF"] << school
        #binding.pry
      elsif city == "Chicago"
        new_hash["Chicago"] << school
      end
    end
    #binding.pry
  end
  new_hash
end
