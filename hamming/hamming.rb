class Hamming
  def self.compute(strand1, strand2)
    raise ArgumentError, 'Strands must be of equal length' unless strand1.length == strand2.length

    strand1.chars.zip(strand2.chars).count { |tuple| tuple[0] != tuple[1] }
  end
end