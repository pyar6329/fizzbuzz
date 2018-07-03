defmodule FizzBuzz do
  def run do
    1..100
    |> Enum.map(&fizzbuzz/1)
    |> Enum.each(&IO.puts/1)
  end

  # private関数はdoctestが使えないので、暫定的に普通の関数にする
  @doc ~S"""
    iex> FizzBuzz.fizzbuzz(1)
    "1"

    iex> FizzBuzz.fizzbuzz(2)
    "2"

    iex> FizzBuzz.fizzbuzz(3)
    "Fizz"

    iex> FizzBuzz.fizzbuzz(5)
    "Buzz"

    iex> FizzBuzz.fizzbuzz(6)
    "Fizz"

    iex> FizzBuzz.fizzbuzz(15)
    "FizzBuzz"
  """
  def fizzbuzz(number) do
    case {rem(number, 3), rem(number, 5)} do
      {0, 0} -> "FizzBuzz"
      {0, _} -> "Fizz"
      {_, 0} -> "Buzz"
      {_, _} -> Integer.to_string(number)
    end
  end
end
