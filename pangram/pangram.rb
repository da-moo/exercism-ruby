class Pangram
  ALPHA_UNIQ_COUNT_PATTERN = /([a-z])(?!.*\1)/.freeze

  def self.pangram?(sentence)
    sentence.downcase.scan(ALPHA_UNIQ_COUNT_PATTERN).size == 26
  end
end