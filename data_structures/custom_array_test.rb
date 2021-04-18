require 'test/unit'
require_relative 'custom_array'

class CustomArrayTest < Test::Unit::TestCase
    def test_push_to_end
    	array = CustomArray.new
      array.push("")
      array.push("")
      assert_equal array.length, 2
    end

    def test_get_by_index
    	array = CustomArray.new
      array.push("Test")
      assert_equal array.get(0), "Test"
    end

    def test_delete_from_end
    	array = CustomArray.new
      array.push("First")
      array.push("Second")
      array.pop
      assert_equal array.length, 1
      assert_equal array.get(0), "First"
    end

    def test_add_to_beginning
      array = CustomArray.new
      array.push("Second")
      array.unshift("First")
      assert_equal array.length, 2
      assert_equal array.get(0), "First"
    end

    def test_delete_by_index
      array = CustomArray.new
      array.push("First")
      array.push("Second")
      array.push("Third")

      array.delete(1)

      assert_equal array.length, 2
      assert_equal array.get(0), "First"
      assert_equal array.get(1), "Third"
    end
end