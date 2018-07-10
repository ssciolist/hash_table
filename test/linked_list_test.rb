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
end
