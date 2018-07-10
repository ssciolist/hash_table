require './lib/linked_list'
class HashTable
  attr_reader :array
  def initialize(size)
    @array = Array.new(size)
  end

  def put(key, value)
    position = key.sum % @array.length
    if @array[position].nil?
      @array[position] = LinkedList.new({key => value})
    else
      @array[position].append({key => value})
    end
  end

  def get(key)
    position = key.sum % @array.length

    if @array[position].nil?
      return false
    elsif @array[position].value[key]
      return @array[position].value[key]
    else
      current_node = @array[position].next_node

      until current_node.value[key] || current_node.value == nil
        current_node = current_node.next_node
      end

      if !current_node.value[key].nil?
        return current_node.value[key]
      else
        return false
      end
    end
  end

  def collect_keys(val)
    if !val.nil?
      keys = []
      current_node = val
      keys << current_node.value.keys[0]
      until current_node.next_node.nil?
        keys << current_node.value.keys[0]
        current_node = current_node.next_node
      end
    else
    end
    keys
  end

  def print_table
    @array.each_with_index do |val, index|
      puts index, collect_keys(val)
    end
  end
end
