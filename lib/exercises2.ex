require Integer

defmodule Exercises2 do
  @moduledoc """
  Stream and Enum exercises
  """

  @doc """
  Cycles the month in a year infinetely so you will need to use Enum.take(n) to take only the amount of months you want.
  """
  def cycle_months_in_year do
    months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

    Stream.cycle(months)
  end

  def read(filename) do
    filename
    |> File.stream!
    |> Stream.filter(&String.starts_with?(&1, "d"))
    |> Stream.take_every(2)
    |> Stream.map(&String.trim/1)
    |> Enum.into([])
    |> Enum.sort_by(&String.length/1)
    |> Enum.map(&String.capitalize/1)
  end

end
