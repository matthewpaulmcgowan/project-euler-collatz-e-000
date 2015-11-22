def even_next(n)
  return n=n/2
end

def odd_next(n)
  return n=3*n+1
end

def next_value(n)
 if n%2==0
   even_next(n)
 else
   odd_next(n)
 end
end

def collatz(n)
a=[]
  b=n
  while b>1
    a.push(b)
    b=next_value(b)
  end
  a.push(1)
  return a
end

def longest_collatz
  number=999999
  longest=0
  quagmire=0
  while number>500000
    if collatz(number).length>longest
      longest=collatz(number).length
      quagmire=number
    end
    number=number-1
  end
  return quagmire
end