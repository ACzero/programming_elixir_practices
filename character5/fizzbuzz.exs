fb = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, c -> c
end

IO.puts fb.(0,1,2)
IO.puts fb.(1,0,2)
IO.puts fb.(0,0,2)
IO.puts fb.(1,1,2)

call_fb = fn
  n -> fb.(rem(n, 3), rem(n, 5), n)
end

IO.puts call_fb.(10)
IO.puts call_fb.(11)
IO.puts call_fb.(12)
IO.puts call_fb.(13)
IO.puts call_fb.(14)
IO.puts call_fb.(15)
IO.puts call_fb.(16)
