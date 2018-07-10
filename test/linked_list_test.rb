require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'

class LinkedListTest < Minitest::Test
  def test_it_exists
    ll = LinkedList.new(1)

    assert_instance_of LinkedList, ll
  end

  def test_it_can_initialize_with_value
    ll = LinkedList.new(1)

    assert_equal ll.value, 1
  end

  def test_it_can_append
    ll = LinkedList.new(1)
    ll.append(5)

    assert_equal ll.next_node.value, 5
  end

  def test_it_can_append_multiple_times
    ll = LinkedList.new(1)
    ll.append(5)
    ll.append(30)

    assert_equal ll.next_node.next_node.value, 30
  end

  def test_it_can_find
  end
end
