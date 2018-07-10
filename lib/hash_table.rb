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

  def print_table
  end
end




  def push(key, value)
    i = calculate_index(key)
    array[i].append({key => value})
  end

  def get(key)
    i = calculate_index(key)
    array[i].find(key)
  end
