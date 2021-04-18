class CustomArray
  attr_reader :data, :length
  def initialize
    @data = {}
    @length = 0
  end

  def push(item)
    @data[@length] = item
    @length += 1
  end

  def get(index)
    @data[index]
  end

  def pop
    @data.delete(@length - 1)
    @length -= 1
  end

  def unshift(item)
    @data.reverse_each do |key, value|
      @data[key + 1] = value
    end
    @data[0] = item
    @length += 1
  end

  def delete(index)
    while index < @length - 1
      @data[index] = @data[index + 1]
      index += 1
    end
    @data.delete(@length - 1)
    @length -= 1
  end
end