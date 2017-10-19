require "gcd/version"

class Gcd

  def sort_numbers(x, y)
    x > y ? [x, y] : [y, x]
  end

  def calculate(x, y)
    larger, smaller = sort_numbers(x, y)
    reduce(larger, smaller)
  end

  def reduce(larger, smaller)
    remainder = larger % smaller
    until remainder == 0
      larger = smaller
      smaller = remainder
      remainder = larger % smaller
    end

    smaller
  end

  def calculate_recurse(x, y)
    larger, smaller = sort_numbers(x, y)
    return reduce_recurse(larger, smaller)
  end

  def reduce_recurse(larger, smaller)
      remainder = larger % smaller
      return smaller if remainder == 0
      reduce_recurse(smaller, remainder)
  end
end
