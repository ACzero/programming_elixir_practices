defmodule Chop do
  def guess(actual_num, start_num..end_num) do
    guess(actual_num, start_num..end_num, div(start_num + end_num, 2))
  end

  def guess(actual_num, start_num..end_num, guess_num) when guess_num < actual_num do
    IO.puts "Is it #{guess_num}"
    to_guess = div(guess_num + end_num, 2)
    guess(actual_num, guess_num..end_num, to_guess)
  end

  def guess(actual_num, start_num..end_num, guess_num) when guess_num > actual_num do
    IO.puts "Is it #{guess_num}"
    to_guess = div(start_num + guess_num, 2)
    guess(actual_num, start_num..guess_num, to_guess)
  end

  def guess(actual_num, _, guess_num) when guess_num == actual_num do
    IO.puts "Is it #{guess_num}"
    guess_num
  end
end
