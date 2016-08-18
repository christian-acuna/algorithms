def sum(n)
  if n == 0
    0
  else
    n + sum(n - 1)
  end
end

p sum(5)
p sum(4)
p sum(3)
