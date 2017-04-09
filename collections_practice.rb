require 'pry'


def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort! {|a,b| b <=> a}
end

def sort_array_char_count(array)
  array.sort {|a,b| a.length <=> b.length}
end

def swap_elements(array)
  array[1], array[2] = array[2], array[1]
  array
end

def swap_elements_to(array, index, destination_index)
  array[index], array[destination_index] = array[destination_index], array[index]
  array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.each do |string|
    string[2] = "$"
  end
end

def find_a(array)
  array.select do |string|
    string if string.start_with?("a")
  end
end

def sum_array(array)
  array.inject {|sum, n| sum + n}
end

def add_s(array)
  new_array = []
  array.each do |word|
    if array.index(word) != 1
      new_array << word + "s"
    else
      new_array << word
    end
  end
  new_array
end
