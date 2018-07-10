require 'minitest/autorun'
require 'minitest/pride'
require './lib/hash_table.rb'

class HashTableTest < Minitest::Test
  def test_it_can_initialize_with_size
    ht = HashTable.new(10)
  end

  def test_it_can_put
    ht = HashTable.new(10)
    ht.put('Janice', 5)

    assert_equal ht.array[6].value["Janice"], 5
  end

  def test_it_can_put_multiple_times_in_the_same_place
    ht = HashTable.new(10)
    ht.put('Janice', 5)
    ht.put('Sallx', 55)

    assert_equal ht.array[6].value["Janice"], 5
    assert_equal ht.array[6].next_node.value["Sallx"], 55
  end

  def test_it_can_find
    ht = HashTable.new(10)
    ht.put('Janice', 5)
    ht.put('Sallx', 55)

    assert_equal 5, ht.get('Janice')
    assert_equal 55, ht.get('Sallx')
    assert_equal false, ht.get('Angie')
  end
end
