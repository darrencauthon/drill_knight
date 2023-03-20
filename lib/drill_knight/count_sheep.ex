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

      iex> DrillKnight.CountSheep.count([true, true, false, true])
      3

      iex> DrillKnight.CountSheep.count([true, true, false, nil])
      2

  """
  def count(sheep) do
    sheep |> Enum.count(&(&1))
  end
end
