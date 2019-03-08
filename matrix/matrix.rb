class Matrix
  attr_reader :matrix

  def initialize(string)
    @matrix = []
    string.split(/$/) do |row|
      @matrix << row.split.map(&:to_i)
    end
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end
end