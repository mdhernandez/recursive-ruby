def fibs num
  arr = [1, 1]
  r = 2
  while r < num
    add = arr[r-1] + arr[r-2]
	arr.push(add)
    r+=1
  end
  return arr
end

def fibs_rec num
  if num == 0 
  arr = []
  return arr 
  elsif num == 1 
  arr = [1]
  return arr 
  elsif num == 2 
  arr = [1,1]
  return arr
  end
  
  add = fibs_rec(num-1)
  
  add.push(add[-2] + add[-1])
  return add
end

puts fibs(12).inspect
puts fibs_rec(12).inspect