# code here!
require "pry"
class School
    attr_reader :roster
    def initialize(school_name, roster = {})
        @name = school_name
        @roster = roster
    end
    def add_student(name, grade)
        @name = name
        @grade = grade
        if !@roster[grade]
            @roster[grade] = []
        end
        @roster[grade] << name
    end 
    def grade(grade_input)
        @roster[grade_input]
    end
    def sort
        @roster.each do |grade, name_array|
            name_array.sort!
        end
    end
end
# binding.pry
0