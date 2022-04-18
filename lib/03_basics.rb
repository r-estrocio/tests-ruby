def who_is_bigger(a, b, c)
  return "nil detected" if a == nil || b == nil || c == nil
  return "a is bigger" if a > b && a > c
  return "b is bigger" if b > a && b > c
  return "c is bigger" if c > a && c > b
end

def reverse_upcase_noLTA(text)
  return text.reverse.upcase.gsub(/[LTA]/, "")
end

def array_42(array)
  return array.include?(42)
end

def magic_array(array)
  return array.flatten.sort.map { |n| n * 2 }.reject { |n| n % 3 == 0 }.uniq
end
