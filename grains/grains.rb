class Grains
  def self.square(number)
    raise ArgumentError, 'number must be between 1 and 64' if (number <= 0) || (number > 64)

    1 << (number - 1)
  end

  def self.total
    (1 << 64) - 1
  end
end