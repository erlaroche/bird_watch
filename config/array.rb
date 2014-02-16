# [a, b, c, d, e, f, g]

def b_search(x, a)
 low = 0
 up = a.length - 1

 while false 
  mid = (up - low) / 2 + low
  if a[mid] == x
    return mid
  end
end





puts b_search (5, []) == nil

puts b_search (5, [5]) == 0