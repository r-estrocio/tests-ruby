# First try
# def translate(text)
#   return text + "ay" if ["a", "e", "i", "o", "u"].include?(text[0])
#   if !["a", "e", "i", "o", "u"].include?(text[0]) && !["a", "e", "i", "o", "u"].include?(text[1])
#     # || text.start_with?("squ")
#     return text[2..] + text[0..1] + "ay"
#   end
#   return text.reverse + "ay" if !["a", "e", "i", "o", "u"].include?(text[0])
# end
#
# Second try
# def translate_word(word)
#   first_part = word.gsub(/[aeiou].*/, "")
#   second_part = word[first_part.size..]
#   return second_part + first_part + "ay"
# end

# Alexis try (it works!)
# def translate (phrase)
#   vowels = %w{a e i o u}
#   phrase.gsub(/(\A|\s)\w+/) do |word|
#           word.strip!
#       while not vowels.include? word[0] or (word[0] == 'u' and word[-1] == 'q')
#           word += word[0]
#           word = word[1..-1]
#       end
#       word  = ' ' + word + 'ay'
#   end.strip
# end

# Trying a lot in irb...uf
# But my final try (and it works too!!!)
def translate_word(word)
  first_part = ""
  word.each_char.each_with_index do |char, index|
    break if char == "u" && (index == 0 || word[index-1] != "q")
    break if ["a", "e", "i", "o"].include?(char)
    first_part << char
  end
  second_part = word[first_part.size..]
  return second_part + first_part + "ay"
end

def translate(text)
  words = text.split()
  translated_words = words.map { |w| translate_word(w) }
  return translated_words.join(" ")
end
