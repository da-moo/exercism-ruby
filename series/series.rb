class Series
  def initialize(series)
    @series = series
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @series.length
    slices = []
    iterations = @series.length - slice_length + 1
    iterations.times do |index|
      slices << @series[index...(index + slice_length)]
    end
    slices
  end
end