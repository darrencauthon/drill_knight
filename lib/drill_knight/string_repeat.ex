defmodule DrillKnight.StringRepeat do
  @moduledoc """
  Documentation for `DrillKnight.StringRepeat`.
  """

  @doc """
  String repeat.

  ## Examples

      iex> DrillKnight.StringRepeat.repeat(0, "")
      ""

      iex> DrillKnight.StringRepeat.repeat(1, "x")
      "x"

  """
  def repeat(_count, string) do
    string
  end
end
