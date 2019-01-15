
class Student

  def initialize(student_name, cohort_name)
    @student_name = student_name
    @cohort_name = cohort_name
  end

  def student_name()
    return @student_name
  end

  def cohort_name()
    return @cohort_name
  end

  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort_name(new_cohort)
    @cohort_name = new_cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourie_language(favourite_language)
    return favourite_language
  end

end
