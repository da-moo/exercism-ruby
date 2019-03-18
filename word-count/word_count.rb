class Phrase
  NON_WORD_PATTERN = /[^a-z0-9'"]/i.freeze
  BETWEEN_QUOTES_PATTERN = /'(\w+)'/.freeze
  attr_reader :word_count

  def initialize(phrase)
    sanitized_phrase = phrase.gsub(NON_WORD_PATTERN, ' ')
                             .gsub(BETWEEN_QUOTES_PATTERN, '\1')
    @word_count = {}
    sanitized_phrase.downcase.split.each do |word|
      @word_count[word] ||= 0
      @word_count[word] += 1
    end
  end
end