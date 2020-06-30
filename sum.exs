#Implement and run a function sum(n) that uses recursion to calculate the sum of the integers from 1 to n.
#

defmodule Sum do
  def sum(0) , do: 0
  def sum(n), do: n +  sum(n-1)
end

