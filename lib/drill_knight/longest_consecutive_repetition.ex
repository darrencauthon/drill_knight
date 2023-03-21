defmodule DrillKnight.LongestConsecutiveRepetition do
  @moduledoc """
  Documentation for `DrillKnight.LongestConsecutiveRepetition`.
  """

  @doc """
  String repeat.

  ## Examples

      iex> DrillKnight.LongestConsecutiveRepetition.longest("")
      {"", 0}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("a")
      {"a", 1}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("abb")
      {"b", 2}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("aaabbcccddd")
      {"a", 3}

  """
  def longest(string) when string == "", do: {"", 0}

  def longest(string) do
    chars = String.codepoints(string)

    next(tl(chars), {hd(chars), 1}, {hd(chars), 1})
  end

  def next(chars, _, best) when chars == [], do: best

  def next(chars, last, best) when hd(chars) == elem(last, 0) do
    last = {elem(last, 0), elem(last, 1) + 1}
    best = if elem(last, 1) > elem(best, 1), do: last, else: best
    next(tl(chars), last, best)
  end

  def next(chars, _, best), do: next(tl(chars), {hd(chars), 1}, best)
end
