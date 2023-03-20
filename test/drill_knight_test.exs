defmodule DrillKnightTest do
  use ExUnit.Case
  doctest DrillKnight

  test "greets the world" do
    assert DrillKnight.hello() == :world
  end
end
