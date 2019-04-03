class Isogram
  def self.isogram?(input)
    sanitized_input = input.downcase.scan(/\w/)
    sanitized_input.length == sanitized_input.uniq.length
  end
end