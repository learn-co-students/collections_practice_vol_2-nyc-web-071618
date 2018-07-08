def begins_with_r(tool_array)
words_r = []
tool_array.each do |tool|
if tool.start_with?("r","R")
words_r << true
else
words_r << false
end
end
if words_r.include?(false)
return false
else
return true
end
end

def contain_a(array)
words_a = []
array.each do |x|
if x.include?("a")
words_a << x
end
end
words_a
end


def first_wa (array)
words_wa = []
array.each do |words|
 if words[0..1] == "wa"
  words_wa << words
end
end
words_wa.first
end


def remove_non_strings(array)
array.delete_if do |x|

x.is_a?(String) == false
end
array
end


def count_elements(array)
new_array = []
array.each do |x|
#argument which is an array that contains hashes ${x} is each hash
new_array << {:name => x[:name], :count=> array.count(x)}
#into new array we add a hash with key[:name] value is x hash key [name]
#key[:count] value is #{array} agument .count of x *** counts how many times x is in array
end
new_array.uniq
#uniq removes duplicates in the new array
end


def merge_data(key, data)
key.each do |hash1|
data.each do |hash2|
hash1.merge!(hash2[hash1[:first_name]])
#.merge! will overwrite duplicate keys & add contents 2 hash1//  hash2
      end
  end
end


def find_cool(array)
  array.select do |hash|
    hash.has_value?("cool")
  end
end



def organize_schools(schools)
  new_hash = {}
  schools.each{|school,data|
    data.each{|location, value|
      if new_hash[value] == nil
        new_hash[value] = [school]
      else
        new_hash[value] << school
      end
    }
  }
  return new_hash
end
