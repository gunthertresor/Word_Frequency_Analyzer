# Step 1: User Input
print "Enter the path of the text file: "
file_path = gets.chomp

# Step 2: File Reading

text = File.read(file_path)

# Step 3: Word Frequency Analysis
word_counts = Hash.new(0)
words = text.downcase.split(" ")
words.each do |word|
  word_counts[word] += 1
end

# Step 4: Top N Words
print "Enter the number of top words to display: "
top_n = gets.chomp.to_i
sorted_words = word_counts.sort_by { |word, count| -count }
top_words = sorted_words.take(top_n)

# Step 5: Analysis Summary
total_words = words.length
unique_words = word_counts.keys.length
average_frequency = total_words.to_f / unique_words

# Step 6: Display Results
puts "------------------------"
puts "Analysis Summary"
puts "------------------------"
puts "Total words: #{total_words}"
puts "Unique words: #{unique_words}"
puts "Average frequency: #{average_frequency}"
puts "------------------------"
puts "Top #{top_n} Words"
puts "------------------------"
top_words.each do |word, count|
  puts "#{word}: #{count}"
end
