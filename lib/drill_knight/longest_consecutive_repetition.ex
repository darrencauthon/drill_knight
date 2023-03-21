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

    next(tl(chars), {hd(chars), 1})
  end

  def next(chars, last) when chars == [], do: last

  def next(chars, last) when hd(chars) == elem(last, 0) do
    next(tl(chars), {elem(last, 0), elem(last, 1) + 1})
  end

  def next(chars, _), do: next(tl(chars), {hd(chars), 1})
end
