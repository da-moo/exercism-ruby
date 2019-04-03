class Scrabble
  LETTER_SCORES = { /[AEIOULNRST]/i => 1,
                    /[DG]/i => 2,
                    /[BCMP]/i => 3,
                    /[FHVWY]/i => 4,
                    /[K]/i => 5,
                    /[JX]/i => 8,
                    /[QZ]/i => 10 }.freeze

  def initialize(input)
    @input = input.to_s.scan(/\w/)
  end

  def score
    @input.inject(0) do |accum, char|
      accum += LETTER_SCORES.find { |pattern, value| pattern =~ char }[1]
    end
  end

  def self.score(input)
    Scrabble.new(input).score
  end
end