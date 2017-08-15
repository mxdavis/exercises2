defmodule Exercises2Test do
  use ExUnit.Case
  doctest Exercises2

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "the cycle_months_in_year the months of the year, test for 3 months" do
    three_months =
      Exercises2.cycle_months_in_year
      |> Enum.take(3)

      assert three_months == ["January", "February", "March"]
    end

    test "the cycle_months_in_year the months of the year, test for double months" do
      twenty_four_months =
        Exercises2.cycle_months_in_year
        |> Enum.take(24)

        assert twenty_four_months == ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
      end

      test "reads text file and filters and sorts the results" do
        assert Exercises2.read("sample.txt") == ["Drum", "Drill", "Diamond", "Data base"]
      end
end
