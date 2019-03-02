class Acronym
  def self.abbreviate(string)
    string.split(/\b\W+/).inject('') do |abbreviation, word|
      abbreviation << word[0].upcase
    end
  end
end