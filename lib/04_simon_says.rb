def echo(text)
  return text
end

def shout(text)
  return text.upcase
end

# https://stackoverflow.com/questions/44757202/ruby-how-to-repeat-multiply-elements-in-array
def repeat(text, n = 2)
  return Array.new(n, text).join(" ")
end

# https://stackoverflow.com/questions/4528074/getting-a-substring-in-ruby-by-x-number-of-chars
def start_of_word(text, n)
  return text[0...n]
end

# https://stackoverflow.com/questions/30674244/display-first-word-in-string-with-ruby
def first_word(text)
  return text.split.first
end

# https://stackoverflow.com/questions/17635030/how-do-i-capitalize-all-words-in-a-string-apart-from-small-words-in-the-middle-a
def titleize(text)
  no_cap_words = %w{and the}
  cap_words = text.split.map do |word|
    no_cap_words.include?(word) ? word : word.capitalize
  end
  cap_words.first.capitalize!
  return cap_words.join(" ")
end
