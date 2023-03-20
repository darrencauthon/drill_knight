defmodule DrillKnight.CountSheep do
  @moduledoc """
  Documentation for `DrillKnight.CountSheep`.
  """

  @doc """
  String repeat.

  ## Examples

      iex> DrillKnight.CountSheep.count([])
      0

      iex> DrillKnight.CountSheep.count([true])
      1

  """
  def count(sheep) do
    Enum.count(sheep)
  end
end
