defmodule MyEnum do
  def all?([], _), do: true
  def all?([head | tail], func), do: func.(head) and all?(tail, func)

  def each([], _), do: []
  def each([head | tail], func) do
    func.(head)
    [head] ++ each(tail, func)
  end

  def filter([], _), do: []
  def filter([head | tail], func) do
    if func.(head) do
      [head] ++ filter(tail, func)
    else
      filter(tail, func)
    end
  end

  def split(list, idx) do
    _split(list, idx, [])
  end
  defp _split([], _, pre_list), do: [pre_list, []]
  defp _split([head | tail], idx, pre_list) when idx > 0 do
    _split(tail, idx - 1, pre_list ++ [head])
  end
  defp _split([head | tail], idx, pre_list) when idx == 0 do
    [pre_list ++ [head], tail]
  end

  def take([], _), do: nil
  def take([_ | tail], idx) when idx > 0 do
    take(tail, idx - 1)
  end
  def take([head | _], idx) when idx == 0 do
    head
  end

  def flatten(list), do: _flatten(list, [])
  defp _flatten([], _), do: []
  defp _flatten(item, _) when not is_list(item) do
    [item]
  end
  defp _flatten([head | tail], result) do
    _flatten(head, result) ++ _flatten(tail, result)
  end
end
