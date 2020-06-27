#Write a function that takes three arguments.
#If the first two are zero, return “FizzBuzz.”
#If the first is zero, return “Fizz.”
#If the second is zero, return “Buzz.” 
#Otherwise return the third argument.

fizz_buzz = fn 
	0, 0, _ -> "FizzBuzz"
	0, _, _ -> "Fizz"
	_, 0, _ -> "Buzz"
	_,_,n -> n
end

#The operator rem(a, b) returns the remainder after dividing a by b. 
#Write a function that takes a single integer (n) and calls the function fizz_buzz exercise, passing it rem(n,3), rem(n,5), and n.

fizz_rem = fn n ->
	fizz_buzz.(rem(n, 3), rem(n, 5), n)
end

res = [ fizz_rem.(10), fizz_rem.(11), fizz_rem.(12), fizz_rem.(13), fizz_rem.(14), fizz_rem.(15), fizz_rem.(16) ]

IO.puts res

#Write a function prefix that takes a string. It should return a new function that takes a second string. When that second function is called, it will return a string containing the first string, a space, and the second string.


prefix = fn fname ->
  fn sname -> "#{fname} #{sname}" end
end


IO.puts prefix.("Elixir").("Rocks")

