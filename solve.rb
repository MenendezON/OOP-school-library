class Solve
  def factorial(number)
    if number.negative?
      raise ArgumentError, 'Factorial is not defined for negative integers.'
    elsif number.zero
      1
    else
      (1..number).reduce(:*)
    end
  end
end