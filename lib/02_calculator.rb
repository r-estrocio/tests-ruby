def add(x, y)
  return x + y
end

def subtract(x, y)
  return x - y
end

def sum(array)
  return array.sum
end

def multiply(x, y)
  return x * y
end

def power(x, y)
  return x**y
end

def factorial(x)
  return 1 if x == 0
  return x * factorial(x - 1)
end
