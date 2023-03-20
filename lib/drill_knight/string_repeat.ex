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

      iex> DrillKnight.StringRepeat.repeat(2, "x")
      "xx"

  """
  def repeat(count, string) do
     Enum.join(Enum.map((0..count - 1), fn _ -> string end))
  end
end
