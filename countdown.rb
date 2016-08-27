def countdown(i)
  puts i
  if i <= 0
    return
  else
    countdown(i - 1)
  end
end

countdown 10
