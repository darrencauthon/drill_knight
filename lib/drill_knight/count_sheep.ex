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

      iex> DrillKnight.CountSheep.count([false])
      0

  """
  def count(sheep) do
    Enum.count(Enum.filter(sheep, fn x -> x end))
  end
end
