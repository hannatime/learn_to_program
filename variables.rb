x = [2,3,5,5,6,6,6,6,6,6]

def modify(y)
  y.uniq!

  x = 3
  
  y.push x
end

modify(x)

puts x