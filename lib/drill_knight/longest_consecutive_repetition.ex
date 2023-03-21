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

      iex> DrillKnight.LongestConsecutiveRepetition.longest("aaaabb")
      {"a", 4}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("bbbaaabaaaa")
      {"a", 4}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("cbdeuuu900")
      {"u", 3}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("abbbbb")
      {"b", 5}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("aabb")
      {"a", 2}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("ba")
      {"b", 1}

      iex> DrillKnight.LongestConsecutiveRepetition.longest("aaabbcccddd")
      {"a", 3}

  """
  def longest(string) when string == "", do: {"", 0}

  def longest(string) do
    string |> String.codepoints
           |> Enum.chunk_by(&(&1))
           |> Enum.map(&({hd(&1), length(&1)}))
           |> Enum.max_by(fn {_, y} -> y end)
  end
end
