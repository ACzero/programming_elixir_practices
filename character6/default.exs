defmodule Default do
  def func(p1, p2), do: IO.inspect [p1, p2]
  def func(p1, p2 \\ 2, p3 \\ 3, p4), do: IO.inspect [p1, p2, p3, p4]

  def func1(p1, p2 \\ 123)

  def func1(p1, 99) do
    IO.puts "you said 99"
  end
end
