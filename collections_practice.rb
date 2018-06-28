# your code goes here
def begins_with_r(array)
  evaluations = []
  array.each do |item|
    if item[0] == "r"
      evaluations << true
    else
      evaluations << false
    end
  end
  if evaluations.include?(false)
    false
  else
    true
  end
end

def contain_a(array)
  words_with_a = []
  array.each do |word|
    letters = word.split("")
      if letters.include?("a")
        words_with_a << word
      end
    end
    words_with_a
  end

def first_wa(array)
  starts_with_wa = []
  array.map do |word|
    if word[0..1] == "wa"
      starts_with_wa << word
    end
  end
  starts_with_wa[0]
end

def remove_non_strings(array)
  array.delete_if do |word|
    word.instance_of?(String) == false
  end
  array
end

def count_elements(array)
  names = []
  array.each do |name_hash|
    name_hash.each do |key, value|
      names << value
    end
  end
  new_array = []
  names.uniq.each do |elem|
    new_array << {:name => elem, :count => names.count(elem)}
  end
  new_array  
end

def merge_data(a, b)
  a.each do |hash_1|
    b.each do |hash_2|
        hash_1.merge!(hash_2[hash_1[:first_name]])
      end
  end
end

def find_cool(array)
  array.select do |person_hash|
    person_hash.has_value?("cool")
  end 
end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end    


 


