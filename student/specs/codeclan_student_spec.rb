
require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestStudent < MiniTest::Test

  def test_codeclan_student
    codeclan_student = Student.new("Collin", "G11")
    assert_equal("Collin", codeclan_student.student_name)
  end

  def test_get_cohort_name
    codeclan_student = Student.new("Collin", "G11")
    assert_equal("G11", codeclan_student.cohort_name)
  end

  def test_set_student_name
    codeclan_student = Student.new("Jim", "G11")
    codeclan_student.set_student_name("Emily")
    assert_equal("Emily", codeclan_student.student_name)
  end

  def test_set_cohort_name
    codeclan_student = Student.new("William", "G15")
    codeclan_student.set_cohort_name("G9")
    assert_equal("G9", codeclan_student.cohort_name)
  end

  def test_student_dialogue
    codeclan_student = Student.new("Collin", "G11")
    speech = codeclan_student.talk()
    assert_equal("I can talk!", speech)
  end

  def test_favourite_language
    codeclan_student = Student.new("Alex", "G13")
    favourite_language = codeclan_student.say_favourie_language("Ruby")
    assert_equal("Ruby", favourite_language)
  end

end
