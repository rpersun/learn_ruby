def echo(input)
  input
  
end

def shout(input)
  input.upcase
  
end

def repeat(a,num = 2)
  ans = ''
  while num > 0
    ans = ans + a + ' '
    num -= 1
  end
  ans.rstrip
end

def start_of_word(a,num = 1)
  a.slice(0,num)
end

def first_word(a)
  b = a.split
  b[0]
end

def titleize(a)
  words = a.split.map do |w|
    if %w(the and over).include?(w)
      w
    else
    w.capitalize 
    end
  end
    words.first.capitalize!
    words.join(' ')
  
  
end