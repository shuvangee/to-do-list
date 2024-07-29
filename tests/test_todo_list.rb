require 'minitest/autorun'
require './task'
require './todo_list'

class TestToDoList < Minitest::Test

  def setup
    @todo_list = To_Do_list.new
  end

  def test_addition
    
    assert_equal "Task added successfully!", @todo_list.add_task, "Addition of task failed"
  end

  def test_deletion
    
    assert_equal "DELETED!
    
    
    ", @todo_list.del_task, "Deletion of task failed"
  end

end
