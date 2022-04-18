# def translate(text)
#   return text + "ay" if ["a", "e", "i", "o", "u"].include?(text[0])
#   if !["a", "e", "i", "o", "u"].include?(text[0]) && !["a", "e", "i", "o", "u"].include?(text[1])
#     # || text.start_with?("squ")
#     return text[2..] + text[0..1] + "ay"
#   end
#   return text.reverse + "ay" if !["a", "e", "i", "o", "u"].include?(text[0])
# end
#
# A try
# def translate(text)
#   first_part = text.gsub(/[aeiou].*/, "")
#   second_part = text[first_part.size..]
#   return second_part + first_part + "ay"
# end
#
# Alexis
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

def translate(text)
  first_part = ""
end
