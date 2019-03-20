class Phrase
  SCAN_PATTERN = /\b[\w']+\b/.freeze

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    words.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end

  def words
    @phrase.downcase.scan(SCAN_PATTERN)
  end
end