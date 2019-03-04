module Complement
  def self.of_dna(strand)
    strand.gsub(/./,
                'G' => 'C',
                'C' => 'G',
                'T' => 'A',
                'A' => 'U')
  end
end