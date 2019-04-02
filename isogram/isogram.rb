require 'set'

class Isogram
  def self.isogram?(input)
    sanitized_input = input.downcase.each_char.reject { |char| char =~ /\W/ }
    sanitized_input.length == sanitized_input.to_set.length
  end
end