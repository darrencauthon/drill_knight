defmodule DrillKnight.RemoveStringSpaces do
  @moduledoc """
  Documentation for `DrillKnight.RemoveStringSpaces`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> DrillKnight.RemoveStringSpaces.no_space("")
      ""

      iex> DrillKnight.RemoveStringSpaces.no_space("8 j 8   mBliB8g  imjB8B8  jl  B")
      "8j8mBliB8gimjB8B8jlB"

  """
  def no_space(x) do
    String.replace(x, " ", "")
  end
end
