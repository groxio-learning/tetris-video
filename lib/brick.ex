defmodule Tetris.Brick do
  defstruct [
    name: :i,
    location: {40, 0},
    rotation: 0,
    reflection: false
  ]

  def new(), do: __struct__()

  def new_random() do
    %{
      name: random_name(),
      location: {40, 0},
      rotation: random_rotation(),
      reflection: random_reflection()
    }
  end

  def random_name() do
    ~w(i l z o t)a
|> Enum.random  end


  def random_rotation() do
    [0, 90, 180, 270]
    |> Enum.random
  end


  def random_reflection() do
    [true, false]
    |> Enum.random
  end

end
