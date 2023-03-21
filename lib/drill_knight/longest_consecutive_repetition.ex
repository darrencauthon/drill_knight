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

  """
  def longest(string) when string == "", do: {"", 0}

  def longest(string) do
    {hd(String.codepoints(string)), String.length(string)}
  end
end
