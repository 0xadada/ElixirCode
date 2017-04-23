defmodule Identicon do
  @moduledoc """
  Identicon generates a unique reproducible image for a given string.
  """

  @doc """
  program entrypoint.
  """
  def main(input) do
    input
    |> Identicon.hash_input
    |> Identicon.pick_color
  end

  @doc """
  Creates a {R, G, B} color from first 3 values in the image.
  """
  def pick_color(%Identicon.Image{hex: [r, g, b | _tail]} = image) do
    %Identicon.Image{image | color: {r, g, b}}
  end

  @doc """
  Convert input to a struct including a series of unique letters and numbers.
  """
  def hash_input(input) do
    hex = :crypto.hash(:md5, input)
    |> :binary.bin_to_list

    %Identicon.Image{hex: hex}
  end
end
