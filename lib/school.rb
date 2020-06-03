class School

  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(stu_name, grade)
    @roster[grade] ? @roster[grade] << stu_name : @roster[grade] = [stu_name]
  end

  def grade(level)
    @roster[level]
  end

  def sort
    @roster.map { |level, names| [level, names.sort] }.to_h
  end

end
