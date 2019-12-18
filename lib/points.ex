defmodule Tetris.Points do
  def translate(points, {x, y}) do
    Enum.map(points, fn {dx, dy} -> {dx + x, dy + y} end )
  end
end