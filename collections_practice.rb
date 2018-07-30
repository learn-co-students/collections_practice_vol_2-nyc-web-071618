def begins_with_r(arr)
  arr.all? {|word| word.start_with?("r")}
end

def contain_a(arr)
  arr.select {|elem| elem.include?("a")}
end

def first_wa(arr)
  arr.find {|elem| elem.to_s.start_with?("wa")}
end

def remove_non_strings(arr)
  arr.select {|elem| elem==elem.to_s}
end

def count_elements(arr)
  arr.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    arr.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
