def collatz(number)
  if number == 1
    0
  elsif number.even?
    1 + collatz(number / 2)
  elsif number.odd?
    1 + collatz((3 * number) + 1)
  end
end


p collatz(7)
