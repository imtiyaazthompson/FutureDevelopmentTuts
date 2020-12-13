defmodule MatchStickFactory do

  # Constants
  @big 50
  @medium 20
  @small 5

  def boxes(nr_boxes) do
    # Make using of kernel functions for division that return integers
    # and modulo
    large = div(nr_boxes, @big)
    remaining = rem(nr_boxes, @ big)

    medium = div(remaining, @medium)
    remaining = rem(remaining, @medium)

    small = div(remaining, @small)
    remaining = rem(remaining, @small)

    # Maps - similar to python dicts
    match_boxes = %{"small" => small,
                    "medium" => medium,
                    "large" => large,
                    "remaining" => remaining
                  }
  end
end
