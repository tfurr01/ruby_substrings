dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "String?"
string = gets.chomp

def substrings (string, array)
  substring_counts = {}
  if string.include?(' ')
    array.each { |substring|
      counter = 0
      string.split.each { |word|
        if word[substring]
          counter += 1
        end
      }
      if counter > 0
        substring_counts[substring] = counter
      end
    }
  else
    array.each { |substring| 
      counter = 0
      if string[substring]
        counter +=1
      end
      if counter > 0
        substring_counts[substring] = counter
      end
    }
  end
  puts substring_counts
end

substrings(string, dictionary)