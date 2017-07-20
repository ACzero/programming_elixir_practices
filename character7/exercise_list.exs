defmodule ExerciseList do
  def mapsum(list, func), do: _mapsum(list, 0, func)
  defp _mapsum([], total, _), do: total
  defp _mapsum([head | tail], total, func), do: _mapsum(tail, total+func.(head), func)

  def max([head | tail]), do: _max(tail, head)
  defp _max([], max_num), do: max_num
  defp _max([head | tail], max_num) when head > max_num do
    _max(tail, head)
  end
  defp _max([head | tail], max_num) when head <= max_num do
    _max(tail, max_num)
  end

  def caesar([], _), do: []
  def caesar([head | tail], n), do: [_caesar(head, n) | caesar(tail, n)]
  defp _caesar(codepoint, n) do
    ?a + rem(codepoint + n - ?a, ?z - ?a + 1)
  end

  def span(from, to) when is_number(from) and is_number(to) and from == to do
    [from]
  end
  def span(from, to) when is_number(from) and is_number(to) and from < to do
    [ from | span(from + 1, to) ]
  end
end
