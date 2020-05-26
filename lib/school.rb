class School

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, student_grade)
    @roster[student_grade] = [] if @roster.has_key?(student_grade) == false
    @roster[student_grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_pair do |grade, students|
      students.sort!
    end
    @roster.sort.to_h
  end

end