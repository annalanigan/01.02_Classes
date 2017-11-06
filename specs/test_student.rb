require 'minitest/autorun'
require 'minitest/rg'
require_relative "../student.rb"


class TestStudent < MiniTest::Test

  def test_student_name
    class_student = Student.new("Anna", 17)
    assert_equal("Anna", class_student.name)
  end

  def test_cohort_number
    class_student = Student.new("Anna", 17)
    assert_equal(17, class_student.cohort)
  end

  # def test_set_student_name
  #   class_student =
  # end

end
