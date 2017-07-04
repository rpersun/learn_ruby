def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  array.inject(0){|sum,x| sum + x }
end

def multiply(a,b,c = 1,d = 1)
  a *b * c * d
end

def power(a,b)
  a ** b
end

def factorial(a)
  ans = 1
  if a == 0
    ans = ans
  else
    while a > 0
      ans = ans * a
      a = a - 1
    end
  end
  return ans
end

