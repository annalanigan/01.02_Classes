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

  def test_set_student_name
    class_student = Student.new("Anna", 17)
    class_student.name = "Bob"
    assert_equal("Bob", class_student.name)
  end

  def test_set_student_cohort
    class_student = Student.new("Anna", 17)
    class_student.cohort = 16
    assert_equal(16, class_student.cohort)
  end

  def test_student_talk
    class_student = Student.new("Anna", 17)
    assert_equal("I can talk!", class_student.talk)
  end

  def test_favourite_language
    class_student = Student.new("Anna", 17)
    result = class_student.favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end

end
