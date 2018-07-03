def begins_with_r(array)
  # takes an array as an arguemtns
  words_beginning_r = []
array.each do |word|
  if word.start_with?("r", "R")
    # if the word in the array starts with R
    # we will push true to our array
words_beginning_r << true
else
  # if not then put false
  words_beginning_r << false
end
# end if
end
 # end the collect
if  words_beginning_r.include?(false)
  # if our new array contains false then return false
   false
 else
# if the array only incldes true then return true
   true

 end
 # end the if

end

# end the def

def contain_a(array)
  words_with_a = []
  # we are creating the array we will put the words containing a
  array.each do |word|
    #for each word in the array we will do the following
    if word.include?("a")
      #if the word includes a then push that word into the new array
      words_with_a << word
    end
  end
  words_with_a
  # we will return this array once our each loop is finished
end

def first_wa(array)
words_with_wa = []
# this is the array we will put the words that start with wa at
array.each do |word|
# for each element in the arry we wil do the following
  if word[0..1] == "wa"
    # if the word/element first two characters (range 0..1 ) equal wa
    # we will do the code below with is putting that word in the new array
    words_with_wa << word
end
end
words_with_wa[0]
# we will now return the first element in that array using the index number
end

def remove_non_strings(array)

array.delete_if do |word|

   word.class != String

end
array

end

def count_elements(array)
  new_array = array.uniq
  new_array.collect do |hash|
    num = array.count(hash)
    hash[:count] = num
    hash
  end
end

  def merge_data(keys, data)
    merged_data = []
    i = 0
    data.each do |main_hash|
      main_hash.each do |name, properties_hash|
        merged_data << properties_hash.merge(keys[i])
        i += 1
      end
    end
    merged_data
  end

  def find_cool(array)
    # find all cool hashes
    array.select {|person| person[:temperature] == "cool"}
  end


  def organize_schools(hash)
    #school s {location => city}
    new_hash = {}
    hash.each do |schools, locations|
      city = locations[:location]
      if new_hash[city]
        new_hash[city] << schools
      else
        new_hash[city] = [schools]
      end
    end
    new_hash
  end
