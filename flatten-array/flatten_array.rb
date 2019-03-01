class FlattenArray
  def self.flatten(data, init = [])
    if data.is_a? Array
      data.each { |x| flatten(x, init) }
    else
      init << data unless data.nil?
    end
    init
  end
end